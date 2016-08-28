jQuery(document).ready(function($) {

	//Add CSRF token to all ajax requests
	$.ajaxPrefilter(function(options, originalOptions) {
		options.headers = $.extend(originalOptions.headers, {
			"Csrf_RQ_PARAM_NAME" : $('#Csrf_RQ_PARAM_NAME').val()
		});
	});
	
	//Change Price color on hover to display that item is in focus
	$('.plan').hover(function () {
        $(this).addClass('featured');
    }, function () {
        $(this).removeClass('featured');
    });
	
	//Disable Create button if comapnay name is empty
	if($("#companyName").val().length == 0){
		$("button.order").attr("disabled","disabled");
	}else{
		$("button.order").removeAttr("disabled");
	}
	
/*	$("#createCompany").on("click", function(){
        $.ajax({
            beforeSend: function() {
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
	});*/

});