(function($){
	$.connectWeinre = function(options){
		if(options == undefined) {
			options = {};
		}
	
		if(options.url === undefined) {
			var host = options.host || "127.0.0.1";
			var port = options.port || "8080";
			var id = options.id || "anonymous";	
			var path = options.path || "/target/target-script-min.js#";

			var url = "http://" + host + ":" + port + path + id;
		} else {
			var url = options.url;
		}

		var script = document.createElement( 'script' );
		script.type = 'text/javascript';
		script.src = url;

		document.body.appendChild(script);
	};
})(jQuery);