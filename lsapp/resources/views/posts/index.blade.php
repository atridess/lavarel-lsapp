@extends('layouts.app')

@section('content')
  <h1>Posts</h1>
  @if(count($posts) > 0)
      @foreach($posts as $post)
        <div class="card">
          <div class="card-body">
            <h3><a href="/posts/{{$post->id}}">{{$post->title}}</a></h3>
            <hr>
            @if($post->updated_at == $post->created_at)
              <small>Created on {{$post->created_at}}</small>
            @else
              <small>Updated on {{$post->updated_at}}</small>
            @endif
          </div>
        </div>
        {{$posts->links()}}
      @endforeach
  @else
    <p>No posts found</p>
  @endif
@endsection
