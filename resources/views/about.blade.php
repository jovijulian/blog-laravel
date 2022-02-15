@extends('layouts.main')

@section('container')

{{-- <div class="container">
    <div class="justify-content-center mb-5">
        <div class="col-md-8"> --}}
            <h1 class="mb-3" >About Me</h1>
            <img src="img/{{ $image }}" alt="{{ $name }}" width="200" class="img-thumbnail justify-content-center" >
            <h3>Created By {{ $name }}</h3>
            <h3 >Email : {{ $email }}</h3>

@endsection

