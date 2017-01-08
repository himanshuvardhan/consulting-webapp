jQuery(document).ready(function($) {

	$.ajaxPrefilter(function(options, originalOptions) {
		options.headers = $.extend(originalOptions.headers, {
			"Csrf_RQ_PARAM_NAME" : $('#Csrf_RQ_PARAM_NAME').val()
		});
	});
	
	$("#uploadButton").css("background-color", "red");
	$("#uploadButton").css("border-color", "red");

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

var initializePayment = function(){
	
	$.ajax({
	    type: 'POST',
	    url: 'payMoney.htm',
	    dataType: "json",
	    traditional : true,
	    data: { 
	        'incomeTaxRequestIdForPayment': $("#incomeTaxRequestIdForPayment").val()
	    },
	    success: function(response){
	    	alert(response);
	        $("#payUMoneyForm").html(response);
	    },
	    error: function(response){
	    	alert(response);
	        $("#payUMoneyForm").html(response);
	    }
	});
	
};

$('#uploadIncomeTaxData').fileupload(
		{
			autoUpload : false,
			dataType : 'json',
			beforeSend : function(xhr) {
				xhr.setRequestHeader("Csrf_RQ_PARAM_NAME", $(
						'#Csrf_RQ_PARAM_NAME').val());
			},
			add : function(e, data) {
				$('#uploadButton').unbind('click');
				$("#uploadButton").on('click', function() {
					$('#uploadButton').html("Uploading ....");
					data.submit();
				});
			},
			success : function(data, xhr) {
				if(data == -1){
					$('#uploadButton').unbind('click');
					$("#uploadButton").attr("disabled", true);
					$('#uploadButton').html("Upload Form 16");
					$("span.fileupload-new").html("Select Form 16");
					$("#uploadButton").css("background-color", "red");
					$("#uploadButton").css("border-color", "red");
					$("#successErrorMessage").html("Request Not Submitted. Try Again");
					$("#successErrorMessage").css('color','red');
				}else{
					$("#incomeTaxRequestId").val(data);
					$("#incomeTaxRequestIdForPayment").val(data);
					$('#uploadButton').unbind('click');
					$("#uploadButton").attr("disabled", true);
					$('#uploadButton').html("Upload Other Documents");
					$("span.fileupload-new").html("Select Other Documents");
					$("#otherDocuments").val(true);
					$("#uploadButton").css("background-color", "red");
					$("#uploadButton").css("border-color", "red");
					$("#successErrorMessage").html("File Uploaded Successfuly");
					$("#successErrorMessage").css('color','green');
				}
			},
			error : function(xhr, ajaxOptions, thrownError) {
				$('#uploadButton').unbind('click');
				$("#uploadButton").attr("disabled", true);
				$('#uploadButton').html("Upload Form 16");
				$("span.fileupload-new").html("Select Form 16");
				$("#uploadButton").css("background-color", "red");
				$("#uploadButton").css("border-color", "red");
				$("#successErrorMessage").html("Request Not Submitted. Try Again");
				$("#successErrorMessage").css('color','red');
			},
			submit : function(e, data) {
			},
			done : function(e, data) {
				/*$("#incomeTaxRequestId").val(data.result);
				$("#incomeTaxRequestIdForPayment").val(data.result);
				$('#uploadButton').unbind('click');
				$("#uploadButton").attr("disabled", true);
				$('#uploadButton').html("Upload Other Documents");
				$("span.fileupload-new").html("Select Other Documents");
				$("#otherDocuments").val(true);
				$("#uploadButton").css("background-color", "red");
				$("#uploadButton").css("border-color", "red");*/
			},
			change : function(e, data) {
				
				var $myForm =$("#uploadIncomeTaxDataForm");
				if (!$myForm[0].checkValidity()) {
					  //$myForm.find('button.submit').click()
					$('<input type="submit">').hide().appendTo($myForm).click().remove();
				}else{	
					$("#successErrorMessage").html("");
					var fileReader = new FileReader();
					fileReader.onload = function(e) {
						var int32View = new Uint8Array(e.target.result);
						// https://en.wikipedia.org/wiki/List_of_file_signatures)
						if (int32View.length > 2 && int32View[0] == 0x4D
								&& int32View[1] == 0x5A) {
							return false;
						} else {
							
							$("#uploadButton").attr("disabled", false);
							$("#uploadButton").css("background-color", "#81c83c");
							$("#uploadButton").css("border-color", "#81c83c");
						}
					};
					fileReader.readAsArrayBuffer(data.files[0]);
				}			
			}
		});