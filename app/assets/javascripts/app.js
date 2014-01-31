$(function() {
	$("#searchbox input").keyup(function() {
		$.get($("searchbox").attr("action"), $("#searchbox").serialize(), null, "script");
		return false;
	});
});