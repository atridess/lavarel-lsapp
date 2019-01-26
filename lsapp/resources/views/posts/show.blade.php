@extends('layouts.app')

@section('content')
  <a href="/posts" class="btn btn-primary" role="button">Go Back</a>
  <br><br>
  <h1>{{$post->title}}</h1>

  <div>
    {!!$post->body!!}
  </div>

  <hr>

  <small>Created on {{$post->created_at}}</small><br>
  <small>Last update {{$post->updated_at}}</small>
  <hr>
  <a href="/posts/{{$post->id}}/edit" class="btn btn-primary">Edit</a>
  {!!Form::open(['action' => ['PostsController@destroy', $post->id], 'method' =>'POST', 'class' => 'float-right' ])!!}
    {{Form::hidden('_method', 'DELETE')}}
    {{Form::submit('Delete', ['class'=> 'btn btn-danger'])}}
  {!!Form::close() !!}
@endsection
