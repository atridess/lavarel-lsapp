@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <a href="/posts/create" class="btn btn-primary">Create Post</a>
                    <br>
                    <br>
                    <h3>Your Blog Posts</h3>
                    @if(count($posts) > 0)
                    <table class="table table-striped">
                      <tr>
                        <th>Title</th>
                        <th></th>
                        <th></th>
                      </tr>
                      @foreach ($posts as $post)
                        <tr>
                          <td>
                            <a class="" href="/posts/{{$post->id}}/edit">{{$post->title}}</a>
                            <br>
                            <small>Updated: {{$post->updated_at}}</small>
                          </td>
                          <td><a class="btn btn-primary" href="/posts/{{$post->id}}/edit">Edit</a></td>
                          <td>
                            {!!Form::open(['action' => ['PostsController@destroy', $post->id], 'method' =>'POST', 'class' => 'float-right' ])!!}
                              {{Form::hidden('_method', 'DELETE')}}
                              {{Form::submit('Delete', ['class'=> 'btn btn-danger'])}}
                            {!!Form::close() !!}
                          </td>
                        </tr>
                      @endforeach
                    </table>
                    @else
                      <div class="alert alert-primary" role="alert">
                        There is no post created by you yet
                      </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
