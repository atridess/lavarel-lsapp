@extends('layouts.app')

@section('content')
  <h1>Posts</h1>
  @if(count($posts) > 0)
      @foreach($posts as $post)
        <div class="card">
          <div class="card-body">
            <div class="row">
              <div class="col-md-4 col-sm-4">
                  <img style="width:100%" src="/storage/cover_images/{{$post->cover_image}}">
              </div>
              <div class="col-md-8 col-sm-8">
                  <h3><a href="/posts/{{$post->id}}">{{$post->title}}</a></h3>
                  <hr>
                  @if($post->updated_at == $post->created_at)
                    <small>Created on {{$post->created_at}}</small>
                  @else
                    <small>Updated on {{$post->updated_at}}</small>
                  @endif
                  <br>
                  <small>by {{$post->user['name']}}</small>
              </div>
            </div>
          </div>
        </div>
        <br>
      @endforeach
      <br>
      {{$posts->links()}}
  @else
    <div class="alert alert-primary" role="alert">
      There is no Posts created yet
    </div>
  @endif
@endsection
