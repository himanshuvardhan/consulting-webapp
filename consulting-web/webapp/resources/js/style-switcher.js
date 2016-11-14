jQuery(document).ready(function($) {
	
		// Color Changer
		$("#preset1" ).click(function(){
			$("#style-switch").attr("href", "resources/style/presets/preset1.css" );
			$("#styleSwitcherPreset").val("resources/style/presets/preset1.css");
			return false;
		});
		$("#preset2" ).click(function(){
			$("#style-switch").attr("href", "resources/style/presets/preset2.css" );
			$("#styleSwitcherPreset").val("resources/style/presets/preset2.css");
			return false;
		});
		$("#preset3" ).click(function(){
			$("#style-switch").attr("href", "resources/style/presets/preset3.css" );
			$("#styleSwitcherPreset").val("resources/style/presets/preset3.css");
			return false;
		});
		$("#preset4" ).click(function(){
			$("#style-switch").attr("href", "resources/style/presets/preset4.css" );
			$("#styleSwitcherPreset").val("resources/style/presets/preset4.css");
			return false;
		});
		$("#preset5" ).click(function(){
			$("#style-switch").attr("href", "resources/style/presets/preset5.css" );
			$("#styleSwitcherPreset").val("resources/style/presets/preset5.css");
			return false;
		});
		$("#preset6" ).click(function(){
			$("#style-switch").attr("href", "resources/style/presets/preset6.css" );
			$("#styleSwitcherPreset").val("resources/style/presets/preset6.css");
			return false;
		});

});