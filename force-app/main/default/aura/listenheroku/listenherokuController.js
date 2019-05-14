({
	jsLoaded: function(component, event, helper) {
        		console.log('hugo');
		var socket = io.connect('https://rocky-atoll-53780.herokuapp.com/testing', {'force': true});

        console.log(socket);
            
        socket.on('notice', function(data) {
            console.log(data);
        });
	}
})