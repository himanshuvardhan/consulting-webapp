jQuery(document).ready(function($) {

	// Color Changer
	$("#preset1").click(function() {
		$("#style-switch").attr("href", "resources/style/presets/preset1.css");
		$("#styleSwitcherPreset").val("resources/style/presets/preset1.css");
		$.ajax({
			url : "updateStyle.htm",
			data :  {
				presetStyle : 'preset1.css'
			  },
			type : "POST",
			traditional : true,
			success : function(response) {

			},
			error : function(xhr, ajaxOptions, thrownError) {
			}

		});
		return false;
	});
	$("#preset2").click(function() {
		$("#style-switch").attr("href", "resources/style/presets/preset2.css");
		$("#styleSwitcherPreset").val("resources/style/presets/preset2.css");
		$.ajax({
			url : "updateStyle.htm",
			data :  {
				presetStyle : 'preset2.css'
			  },
			type : "POST",
			traditional : true,
			success : function(response) {

			},
			error : function(xhr, ajaxOptions, thrownError) {
			}

		});
		return false;
	});
	$("#preset3").click(function() {
		$("#style-switch").attr("href", "resources/style/presets/preset3.css");
		$("#styleSwitcherPreset").val("resources/style/presets/preset3.css");
		$.ajax({
			url : "updateStyle.htm",
			data :  {
				presetStyle : 'preset3.css'
			  },
			type : "POST",
			traditional : true,
			success : function(response) {

			},
			error : function(xhr, ajaxOptions, thrownError) {
			}

		});
		return false;
	});
	$("#preset4").click(function() {
		$("#style-switch").attr("href", "resources/style/presets/preset4.css");
		$("#styleSwitcherPreset").val("resources/style/presets/preset4.css");
		$.ajax({
			url : "updateStyle.htm",
			data :  {
				presetStyle : 'preset4.css'
			  },
			type : "POST",
			traditional : true,
			success : function(response) {

			},
			error : function(xhr, ajaxOptions, thrownError) {
			}

		});
		return false;
	});
	$("#preset5").click(function() {
		$("#style-switch").attr("href", "resources/style/presets/preset5.css");
		$("#styleSwitcherPreset").val("resources/style/presets/preset5.css");
		$.ajax({
			url : "updateStyle.htm",
			data :  {
				presetStyle : 'preset5.css'
			  },
			type : "POST",
			traditional : true,
			success : function(response) {

			},
			error : function(xhr, ajaxOptions, thrownError) {
			}

		});
		return false;
	});
	$("#preset6").click(function() {
		$("#style-switch").attr("href", "resources/style/presets/preset6.css");
		$("#styleSwitcherPreset").val("resources/style/presets/preset6.css");
		$.ajax({
			url : "updateStyle.htm",
			data :  {
				presetStyle : 'preset6.css'
			  },
			type : "POST",
			traditional : true,
			success : function(response) {

			},
			error : function(xhr, ajaxOptions, thrownError) {
			}

		});
		return false;
	});

});