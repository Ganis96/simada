<!-- Luas Field -->
<div class="form-group col-sm-6 row">
    {!! Form::label('luas', 'Luas Tanah:') !!}
    <div class="input-group">
        {!! Form::number('luas', null, ['class' => 'form-control', 'data-bind' => 'value: viewModel.data["KIB A"]().luas']) !!}
        <div class="input-group-append">
            <span class="input-group-text text-danger" id="basic-addon2">Pemisah pecahan dengan titik (misal: 1.5)</span>
        </div>
    </div>    
</div>

<!-- Alamat Field -->
<div class="form-group col-sm-6 row">
    {!! Form::label('alamat', 'Letak/Alamat:') !!}
    {!! Form::textarea('alamat', null, ['class' => 'form-control', 'data-bind' => 'value: viewModel.data["KIB A"]().alamat']) !!}
</div>

<!-- Idkota Field -->
<div class="form-group col-sm-6 row">
    {!! Form::label('idkota', __('field.idkota')) !!}
    {!! Form::select('idkota',[], null, ['class' => 'form-control', 'data-bind' => 'value: viewModel.data["KIB A"]().idkota']) !!}
</div>

<!-- Idkecamatan Field -->
<div class="form-group col-sm-6 row">
    {!! Form::label('idkecamatan', __('field.idkecamatan')) !!}
    {!! Form::select('idkecamatan', [], null, ['class' => 'form-control', 'data-bind' => 'value: viewModel.data["KIB A"]().idkecamatan']) !!}
</div>

<!-- Idkelurahan Field -->
<div class="form-group col-sm-6 row">
    {!! Form::label('idkelurahan', __('field.idkelurahan')) !!}
    {!! Form::select('idkelurahan', [], null, ['class' => 'form-control', 'data-bind' => 'value: viewModel.data["KIB A"]().idkelurahan']) !!}
</div>

<!-- Koordinatlokasi Field -->
<div class="form-group col-sm-6 row">
    {!! Form::label('koordinatlokasi', 'Koordinat lokasi:') !!}
    {!! Form::text('koordinatlokasi', null, ['class' => 'form-control', 'data-bind' => 'value: viewModel.data["KIB A"]().koordinatlokasi']) !!}
</div>

<!-- Koordinattanah Field -->
<div class="form-group col-sm-6 row">
    {!! Form::label('koordinattanah', 'Koordinat tanah:') !!}
    {!! Form::text('koordinattanah', null, ['class' => 'form-control', 'data-bind' => 'value: viewModel.data["KIB A"]().koordinattanah']) !!}
</div>

<u class="col-md-12 no-padding">Status Tanah:</u>

<div class="col-md-12">
    <!-- Hak Field -->
    <div class="form-group col-sm-6 row">
        {!! Form::label('hak', 'Hak:') !!}
        {!! Form::select('hak', \App\Models\BaseModel::$hakDs, null, ['class' => 'form-control', 'data-bind' => 'value: viewModel.data["KIB A"]().hak']) !!}
    </div>

    <!-- Status Sertifikat Field -->
    <div class="form-group col-sm-6 row">
        {!! Form::label('status_sertifikat', 'Status Sertifikat:') !!}
        {!! Form::select('status_sertifikat', \App\Models\BaseModel::$sertifikatDs, null, ['class' => 'form-control', 'data-bind' => 'value: viewModel.data["KIB A"]().status_sertifikat']) !!}
    </div>

    <!-- Tgl Sertifikat Field -->
    <div class="form-group col-sm-6 row">
        {!! Form::label('tgl_sertifikat', 'Tgl Sertifikat:') !!}
        {!! Form::text('tgl_sertifikat', null, ['class' => 'form-control','id'=>'tgl_sertifikat', 'data-bind' => 'value: viewModel.data["KIB A"]().tgl_sertifikat']) !!}
    </div>

    <!-- Nama Sertifikat Field -->
    <div class="form-group col-sm-6 row">
        {!! Form::label('nomor_sertifikat', 'Nomor Sertifikat:') !!}
        {!! Form::text('nomor_sertifikat', null, ['class' => 'form-control', 'data-bind' => 'value: viewModel.data["KIB A"]().nomor_sertifikat']) !!}
    </div>

    <!-- Penggunaan Field -->
    <div class="form-group col-sm-6 row">
        {!! Form::label('penggunaan', 'Penggunaan:') !!}
        {!! Form::select('penggunaan', [], null, ['class' => 'form-control', 'data-bind' => 'value: viewModel.data["KIB A"]().penggunaan']) !!}
    </div>

    <!-- Keterangan Field -->
    <div class="form-group col-sm-6 row">
        {!! Form::label('keterangan', 'Keterangan:') !!}
        {!! Form::textarea('keterangan', null, ['class' => 'form-control', 'data-bind' => 'value: viewModel.data["KIB A"]().keterangan']) !!}
    </div>
</div>




<!-- Submit Field -->
@if(!isset($notShowSubmit))
<div class="form-group col-sm-12">
    {!! Form::submit('Simpan', ['class' => 'btn btn-primary submit']) !!}
    <a href="{!! route('detiltanahs.index') !!}" class="btn btn-default">Batal</a>
</div>
@endif


<script type="text/javascript"> 
    
    viewModel.jsLoaded.subscribe((newVal) => {    
        // document is ready. Do your stuff here
        const googleMapKoordinatLokasi = new MapInput(document.getElementById('koordinatlokasi'), {})

        const mapTanah = new MapInput(document.getElementById('koordinattanah'), {
            draw: true,
            drawOptions: [
                'Polygon'
            ]
        })

        new inlineDatepicker(document.getElementById('tgl_sertifikat'), {
            format: 'DD-MM-YYYY',
            buttonClear: true,
        });

        $('#penggunaan').select2({
            ajax: {
                url: "<?= url('api/pengunaans') ?>",
                dataType: 'json',
                data: function (params) {
                    var query = {
                        q: params.term,      
                    } 
                    return query;
                },
                processResults: function (data) {
                    // Transforms the top-level key of the response object from 'items' to 'results'
                    return {
                        results: data.data
                    };
                }
            },
            theme: 'bootstrap' ,
        })

        $('#idkota').select2({
            ajax: {
                url: "<?= url('api/alamats') ?>",
                dataType: 'json',
                data: function (params) {
                    var query = {
                        q: params.term,                                           
                        addWhere: [
                            "jenis = '1'"
                        ]
                    } 
                    return query;
                },
                processResults: function (data) {
                    // Transforms the top-level key of the response object from 'items' to 'results'
                    return {
                        results: data.data
                    };
                }
            },
            theme: 'bootstrap' ,
        })


        $('#idkota').on('change', function (e) {
            $("#idkecamatan").val("").trigger("change")
        });


        $('#idkecamatan').select2({
            ajax: {
                url: "<?= url('api/alamats') ?>",
                dataType: 'json',
                data: function (params) {
                    var query = {
                        q: params.term,                                           
                        addWhere: [
                            "jenis = '2'",
                            "pid = " + $("#idkota").val()
                        ]
                    }                    

                    return query;
                },
                processResults: function (data) {
                    // Transforms the top-level key of the response object from 'items' to 'results'
                    return {
                        results: data.data
                    };
                }
            },
            theme: 'bootstrap' ,
        })

        $('#idkecamatan').on('change', function (e) {
            $("#idkelurahan").val("").trigger("change")
        });

        $('#idkelurahan').select2({
            ajax: {
                url: "<?= url('api/alamats') ?>",
                dataType: 'json',
                data: function (params) {
                    var query = {
                        q: params.term,                                           
                        addWhere: [
                            "jenis = '3'",
                            "pid = " + $("#idkecamatan").val()
                        ]
                    }                    

                    return query;
                },
                processResults: function (data) {
                    // Transforms the top-level key of the response object from 'items' to 'results'
                    return {
                        results: data.data
                    };
                }
            },
            theme: 'bootstrap' ,
        })
        
    })
</script>

