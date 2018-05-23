<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\Inventori;
use App\Kadar;
use App\Kategori;
use App\HargaEmas;
use App\Produk;

class InventoriController extends Controller
{
    public function __construct()
    {

    }

    public function index()
    {
        $id_toko = 1;
       
        $products = Produk::join('category','product.category_id','=','category.id')
                    ->join('content','product.content_id','=','content.id')
                    ->join('jewelry_price','content.jewelry_price_id','=','jewelry_price.id')
                    ->select('category.name as kategori','content.percent as kadar','product.name','product.weight', 'product.id','jewelry_price.price','product.description')
                    ->where('product.shop_id','=',1)
                    ->paginate(10);
        foreach ($products as $value) {
            $value->harga = $value->kadar*$value->price*$value->weight/100;
        }
        return view('inventory.product',['products'  => $products]);
    }

    public function add()
    {   
        $id_toko = 1;
        $kadars = Kadar::where('shop_id','=',1)
                ->select('id','percent')
                ->where('deleted_at',null)
                ->get();
        $kategoris = Kategori::where('shop_id','=',1)
                ->select('id','name')
                ->where('deleted_at',null)
                ->get();
        
        return view('inventory.tambah-product',['kadars' => $kadars,'kategoris' => $kategoris]);
    }

    public function saveProduct(Request $request)
    {
        $kategori = Kategori::where('id','=',$request->category_id)
                    ->select('name')
                    ->first();
        Produk::insert([
            'name' => $kategori->name.' - '.$request->weight,
            'content_id' => $request->content_id,
            'category_id' => $request->category_id,
            'shop_id' => 1,
            'weight' => $request->weight,
            'description' =>$request->description,
        ]);

        
        return redirect()->intended('/index');
    }

    public function getCategory()
    {
        $kategoris = Kategori::where('shop_id','=',1)
                    ->select('id','name','description','set_or_no')
                    ->where('deleted_at',null)
                    ->paginate(10);
        return view('inventory.kategori', ['kategoris' => $kategoris]);
    }

    public function addCategory()
    {
        return view('inventory.tambah-kategori');
    }

    public function saveCategory(Request $request)
    {   
        if($request->set_or_no != 1){
            $set_or_no = 0;
        }else{
            $set_or_no = 1;
        }

        Kategori::insert([
            'name' => $request->name,
            'set_or_no' => $set_or_no,
            'description' => 'samijaya - '.$request->name,
            'shop_id' => 1,
        ]);

        return redirect()->intended('/category');
    }

    public function editCategory(Request $request)
    {
        $kategori = Kategori::find($request->id);

        return view('inventory.edit-kategori',['kategori' => $kategori]);
    }

    public function updateCategory(Request $request)
    {
        if($request->state == 'update'){
            $input['name'] = $request->name;
            if($request->set_or_no != 1){
                $input['set_or_no'] = 0;
            }else{
                $input['set_or_no'] = 1;
            }
            DB::table('category')
                ->where('id','=',$request->id)
                ->update($input);
        }else{
            DB::table('category')
                ->where('id','=',$request->id)
                ->update(['deleted_at' => date("Y-m-d h:i:s")]);
        }
        
        return redirect()->intended('/category');
    }

    public function getContent()
    {
        $contents = Kadar::where('shop_id','=',1)
                    ->select('id','percent','description')
                    ->where('deleted_at',null)
                    ->paginate(10);
        return view('inventory.kadar', ['contents' => $contents]);
    }

    public function addContent()
    {
        return view('inventory.tambah-kadar');
    }

    public function saveContent(Request $request)
    {   
        Kadar::insert([
            'percent' => $request->percent,
            'description' => 'samijaya - '.$request->percent .'%',
            'shop_id' => 1,
            'jewelry_prices_id' => 1,
        ]);   

        return redirect()->intended('/content');
    }

    public function editContent(Request $request)
    {
        $content = Kadar::find($request->id);

        return view('inventory.edit-kadar',['content' => $content]);
    }

    public function updateContent(Request $request)
    {
        if($request->state == 'update'){
            $percent = $request->percent;
            $description = 'samijaya - '.$request->percent.' % ';
            DB::table('content')
                ->where('id','=',$request->id)
                ->update(['percent' => $percent, 'description' => $description]);
        }else{
            DB::table('content')
                ->where('id','=',$request->id)
                ->update(['deleted_at' => date("Y-m-d h:i:s")]);
        }
        
        return redirect()->intended('/content');
    }

}