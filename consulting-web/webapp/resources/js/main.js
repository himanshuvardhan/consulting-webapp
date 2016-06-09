jQuery(document).ready(function($) {

	$.ajaxPrefilter(function(options, originalOptions) {
		options.headers = $.extend(originalOptions.headers, {
			"Csrf_RQ_PARAM_NAME" : $('#Csrf_RQ_PARAM_NAME').val()
		});
	});
	
	$("#createCompany").on("click", function(){
        $.ajax({
            beforeSend: function() {
            	alert($('#Csrf_RQ_PARAM_NAME').val());
            },
            complete: function() {
            },
            type: "POST",
            url: "createCompany.htm",
            traditional: true,
            dataType: "json",
            success: function(response) {
            },
            error: function(xhr, status, error) {
            }
        });
	});

});