(function($){
	$.connectWeinre = function(options){
		if(options == undefined) {
			options = {};
		}
		var host = options.host || "127.0.0.1";
		var port = options.port || "8080";
		var id = options.id || "anonymous";	
		var url = "http://" + host + ":" + port + "/target/target-script-min.js#" + id;

		var script = document.createElement( 'script' );
		script.type = 'text/javascript';
		script.src = url;

		document.body.appendChild(script);
	};
})(jQuery);