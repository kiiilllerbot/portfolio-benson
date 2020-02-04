//= require jquery.min.js
//= require popper.min.js
//= require bootstrap-material-design.min.js
//= require moment.min.js
//= require bootstrap-datetimepicker.js
//= require nouislider.min.js
//= require material-kit.min.js
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$(document).ready(function (){
	setTimeout(function(){
		$('#notice_wrapper').fadeOut("slow",function(){
			$(this).remove();
		})
	},3500);
});