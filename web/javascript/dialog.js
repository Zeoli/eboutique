$(document).ready(function() {
	$(function() {
		$("#dialog").dialog({
			autoOpen: false,
			modal: true,
		});
		$("#sesion").on("click", function() {
			$("#dialog").dialog("option", "draggable", false);
			$("#dialog").dialog("open");
		});
	});
});


