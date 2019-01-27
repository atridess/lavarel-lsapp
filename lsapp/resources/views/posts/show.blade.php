@extends('layouts.app')

@section('content')
  <a href="/posts" class="btn btn-primary" role="button">Go Back</a>
  <br><br>
  <h1>{{$post->title}}</h1>
  <img style="width:100%" src="/storage/cover_images/{{$post->cover_image}}">
  <br><br>
  <div>
    {!!$post->body!!}
  </div>

  <hr>

  <small>Created on {{$post->created_at}}</small><br>
  <small>Last update {{$post->updated_at}}</small>
  @if(!Auth::guest())
    @if(Auth::user()->id == $post->user_id)
      <hr>
      <a href="/posts/{{$post->id}}/edit" class="btn btn-primary">Edit</a>
      {!!Form::open(['action' => ['PostsController@destroy', $post->id], 'method' =>'POST', 'class' => 'float-right' ])!!}
        {{Form::hidden('_method', 'DELETE')}}
        {{Form::submit('Delete', ['class'=> 'btn btn-danger'])}}
      {!!Form::close() !!}
    @endif
  @endif
@endsection
