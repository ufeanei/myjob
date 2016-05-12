// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

//

$(document).ready(function(){

// myjobs js

$('.invite-cancel').hide();


	$('.invite').click(function(e){
		e.preventDefault();
	$('.invite-cancel').show();
});
 
 // ajax for index page pagination


// jobs index page js

$(".spinner").hide();
$("#search-job-fylke input[type='submit']").hide();


$("#search-job-fylke input[type='checkbox']").on('change', function(){
	$("#search-job-fylke").submit();

});

  $(document).ajaxStart(function() {
    $(".spinner").fadeIn('slow');
    $(window).scrollTop(0);
 }).ajaxStop(function() {
      $(".spinner").hide();
  });	
});




