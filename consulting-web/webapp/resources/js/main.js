jQuery(document).ready(function($) {

	$.ajaxPrefilter(function(options, originalOptions) {
		options.headers = $.extend(originalOptions.headers, {
			"Csrf_RQ_PARAM_NAME" : $('#Csrf_RQ_PARAM_NAME').val()
		});
	});

});
var computeLoan = function() {
	var amount = $('#amount').val();
	var interest_rate = $('#interest_rate').val();
	var months = $('#months').val();
	var interest = (amount * (interest_rate * .01)) / months;
	var payment = ((amount / months) + interest).toFixed(2);
	if ($.isNumeric(payment)) {
		$('#monthlyEmi').html(payment);
	} else {
		$('#monthlyEmi').html('0.0');
	}
};