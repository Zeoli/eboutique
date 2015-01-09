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

$(document).ready(function() {
	$(function() {
		$("#Rol").dialog({
			autoOpen: false,
			modal: true,
		});
		$("#emergente").on("click", function() {
			$("#Rol").dialog("option", "draggable", false);
			$("#Rol").dialog("open");
		});
	});
});

$(document).ready(function() {
	$(function() {
		$("#Usuario").dialog({
			autoOpen: false,
			modal: true,
		});
		$("#dialogUser").on("click", function() {
			$("#Usuario").dialog("option", "draggable", false);
			$("#Usuario").dialog("open");
		});
	});
});