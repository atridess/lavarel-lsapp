@extends('layouts.app')

@section('content')
      <h1>{{$title}}</h1>
      <p>Try our amazing services.</p>
      @if(count($services) > 0)
        <ul class="list-group">
          @foreach($services as $servise)
            <li class="list-group-item">{{$servise}}</li>
          @endforeach
      </ul>
      @endif
@endsection
