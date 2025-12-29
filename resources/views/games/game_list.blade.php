@extends('layouts.main')
@section('content')
<br><br>
@include('nav_saldo')
<div class="container pt-1 games-category">

            
    <h2 class="title">{{ $title }}</h2>
    
    <div class="row">
        <script type="text/javascript">
            var windowNames = JSON.parse('{"lottery":"lottery","live":"king4d","togel":"king4d"}');
        </script>

        <div class="row">
            
            
            <div class="col-xs-12 col-sm-12 col-md-12 image-grid">
                
                @foreach ($game_list as $game)
                <div class="box <?= $game->game_locked == 1 ? 'maintenance-alert-lock' : '' ?> <?= empty(Auth()->user()) ? "maintenance-login-lock" : ""?>">
                    <div class="game-wrapper">
                        <a target="_blank" rel="opener" class="game" 
                            @if($game->game_locked == 0)
                                href="{{ URL::to('game_process?game_id='.$game->game_id).'&provider='.$game->provider }}"
                            @endif

                            >
                            <img class="img-fluid lazy" alt="{{ $game->game_name }}" data-src="{{ asset($game->image) }}" src="" />
                            <div class="loader-b" *ngIf="!showEle"></div>
                            <div class="g-title">{{ $game->game_name }}</div>
                        </a>
                    </div>
                </div>

                @endforeach
            </div>
        </div>
    </div>
</div><br><br><br>
@endsection