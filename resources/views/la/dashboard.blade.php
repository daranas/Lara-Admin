@extends('la.layouts.app')

@section('htmlheader_title') Dashboard @endsection
@section('contentheader_title') Dashboard @endsection
@section('contentheader_description') Panel Admin @endsection

@section('main-content')
        <section class="content">
          <div class="row">
            <section class="col-lg-9 connectedSortable" style="padding-left:0">
              <div class="box box-success">
                <div class="box-body" style="padding: 20px;">
                  <h4>Selamat Datang!</h4>
                  <p class="text-muted">Anda bisa mulai mengatur dan mengelola konten situs dengan memilih link<br/>yang ada pada sidebar sesuai fitur yang ingin dikelola.</p>
                </div>
              </div>
            </section>
          </div>
        </section>
@endsection

@push('scripts')
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
@endpush

@push('scripts')
<script>
(function($) {
	$('body').pgNotification({
		style: 'circle',
		title: 'Panel Admin',
		message: "Selamat datang Administrator...",
		position: "top-right",
		timeout: 0,
		type: "success",
		thumbnail: '<img width="40" height="40" style="display: inline-block;" src="{{ Gravatar::fallback(asset('la-assets/img/user2-160x160.jpg'))->get(Auth::user()->email, 'default') }}" data-src="assets/img/profiles/avatar.jpg" data-src-retina="assets/img/profiles/avatar2x.jpg" alt="">'
	}).show();
})(window.jQuery);
</script>
@endpush