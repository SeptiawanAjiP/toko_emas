<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use App\Models\Kategori;

class KategoriController extends Controller
{
       /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = 'kategori';

         /**
     * Create a new controller instance.
     *
     * @return void
     */

    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $list_kategori = Kategori::all()->toJson();

        return view('kategori/index', ['list_kategori' => $list_kategori] );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('kategori/create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validateInput($request);
        $nama_file = $request['nomor'].".".$request->file->getClientOriginalExtension();

        Pembelian::create([
        	'nomor' => $request['nomor'],
	      	'tanggal' => $request['tanggal'],
            'pihak_pertama' => $request['pihak_pertama'],
            'pihak_kedua' => $request['pihak_kedua'],
	      	'kategori' => $request['kategori'],
            'tujuan' => $request['tujuan'],
            'tanggal_mulai' => $request['tanggal_mulai'],
            'tanggal_berakhir' => $request['tanggal_berakhir'],
            'biaya' => $request['biaya'],
            'file' => $nama_file,
            'nomor_mou' => $request['nomor_mou'],
            'nomor_pks' => $request['nomor_pks']
        ]);
    
        Storage::putFileAs('public/files/kontrak', new File($request->file), $nama_file);
    

        // Mengirim Email
        // $this->sendMail();

        return redirect()->intended('kategori');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $nomor
     * @return \Illuminate\Http\Response
     */
    public function show($nomor)
    {
        $kategori = Kategori::where('nomor', $nomor)->first();

        return view('kategori/show', ['kategori' => $kategori]);
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $nomor
     * @return \Illuminate\Http\Response
     */
    public function edit($nomor)
    {
        $kategori = Kategori::where('nomor', $nomor)->first();
         // Redirect to state list if updating state wasn't existed
        if ($kategori == null) {
            return redirect()->intended('kategori');
        }
        $daftar_kategori = Kategori::all(); 
        return view('kategori/edit', ['kategori' => $kategori]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $nomor
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $nomor)
    {
        $kategori = Kategori::where('nomor', $nomor);
        //$this->validateInput($request);
        $input = [
           'nomor' => $request['nomor'],
            'tanggal' => $request['tanggal'],
            'pihak_pertama' => $request['pihak_pertama'],
            'pihak_kedua' => $request['pihak_kedua'],
            'kategori' => $request['kategori'],
            'tujuan' => $request['tujuan'],
            'tanggal_mulai' => $request['tanggal_mulai'],
            'tanggal_berakhir' => $request['tanggal_berakhir'],
            'biaya' => $request['biaya'],
            'nomor_mou' => $request['nomor_mou'],
            'nomor_pks' => $request['nomor_pks']
        ];



        Kategori::where('nomor', $nomor)
            ->update($input);

        return redirect()->intended('kategori');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $nomor
     * @return \Illuminate\Http\Response
     */
    public function destroy($nomor)
    {
         $kontrak = Kategori::where('nomor', $nomor)->first();
         $file = '../storage/app/public/files/kontrak/'.$kontrak->file;
         Files::delete($file);
         Kategori::where('nomor', $nomor)->delete();
         return redirect()->intended('kategori');
    }


    /**
     * Search user from database base on some specific constraints
     *
     * @param  \Illuminate\Http\Request  $request
     *  @return \Illuminate\Http\Response
     */
    public function search(Request $request) {

    	$constraints = [
    		'from' => $request['from'],
            'to' => $request['to']
       	];

       $daftar_kontrak = $this->getKontrak($constraints);

       return view('admin/kontrak/index', ['daftar_kontrak' => $daftar_kontrak, 'searchingVals' => $constraints]);
    }

    /**
     * Download file
     *
     * @param  \Illuminate\Http\Request  $file
     *  @return \Illuminate\Http\Response
     */
    public function download($file) {
        return response()->download('../storage/app/public/files/kontrak/'.$file);
    }

    private function doSearchingQuery($constraints) {
        $query = User::query();
        $fields = array_keys($constraints);
        $index = 0;
        foreach ($constraints as $constraint) {
            if ($constraint != null) {
                $query = $query->where( $fields[$index], 'like', '%'.$constraint.'%');
            }

            $index++;
        }
        return $query->paginate(5);
    }

    private function validateInput($request) {
        $this->validate($request, [
        'nomor' => 'required|max:20',
        'tanggal' => 'required|date',
        'pihak_pertama' => 'required|max:100',
        'pihak_kedua' => 'required|max:100',
        'tujuan' => 'required|max:100',
        'tanggal_mulai' => 'required|date',
        'tanggal_berakhir' => 'required|date',
        'biaya' => 'required|numeric',
        'file' => 'required|file|mimes:pdf,doc,docx|max:2000',
        'nomor_mou' => 'required|max:20',
        'nomor_pks' => 'required|max:20'
    	]);
    }

    private function getKontrak($constraints) {
        $query = Kontrak::query();
        if($constraints['from'] != null){
            $query = $query->where( 'tanggal', '>=', $constraints['from']);
        }
        if($constraints['to'] != null){
            $query = $query->where( 'tanggal', '<=', $constraints['to']);
        }
        return $query->paginate(5);

    }

}