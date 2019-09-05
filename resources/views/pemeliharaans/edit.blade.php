@extends('layouts.app')

@section('content')
    <section class="content-header">
        <h1>
            Pemeliharaan
        </h1>
   </section>
   <div class="content">
       @include('adminlte-templates::common.errors')
       <div class="box box-primary">
           <div class="box-body">
               <div class="">
                   {!! Form::model($pemeliharaan, ['route' => ['pemeliharaans.update', $pemeliharaan->id], 'method' => 'patch']) !!}

                        @include('pemeliharaans.fields')

                   {!! Form::close() !!}
               </div>
           </div>
       </div>
   </div>
@endsection