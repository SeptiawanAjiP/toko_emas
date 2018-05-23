@extends('layouts.app')

@section('content')
<section class="panel panel-default bg-white m-t-lg">
    <header class="panel-heading text-center">
      <strong>Login</strong>
    </header>
    <form method="POST" action="{{ route('login') }}" class="panel-body wrapper-lg">
        @csrf
      <div class="form-group">
        <label class="control-label">Email</label>
        <input id="email" type="email" name="email" value="{{ old('email') }}" placeholder="" class="form-control input-lg{{ $errors->has('email') ? ' is-invalid' : '' }}" required autofocus>
        @if ($errors->has('email'))
            <span class="invalid-feedback">
                <strong>{{ $errors->first('email') }}</strong>
            </span>
        @endif
      </div>
      <div class="form-group">
        <label class="control-label">Password</label>
        <input id="password" type="password" name="password" required class="form-control input-lg{{ $errors->has('password') ? ' is-invalid' : '' }}" required>
        @if ($errors->has('password'))
            <span class="invalid-feedback">
                <strong>{{ $errors->first('password') }}</strong>
            </span>
        @endif
      </div>
      <div class="checkbox">
        <label>
          <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> {{ __('Remember Me') }}
        </label>
      </div>
      <a href="{{ route('password.request') }}" class="pull-right m-t-xs"><small>Forgot password?</small></a>
      <button type="submit" class="btn btn-primary">Sign in</button>
      <div class="line line-dashed"></div>
      <a href="#" class="btn btn-facebook btn-block m-b-sm"><i class="fa fa-facebook pull-left"></i>Sign in with Facebook</a>
      <a href="#" class="btn btn-twitter btn-block"><i class="fa fa-twitter pull-left"></i>Sign in with Twitter</a>
      <div class="line line-dashed"></div>
      <p class="text-muted text-center"><small>Do not have an account?</small></p>
      <a href="signup.html" class="btn btn-default btn-block">Create an account</a>
    </form>
</section>

@endsection
