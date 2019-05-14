({
    myAction : function(component, event, helper) {
    	console.log('My id is: ' + component.get("v.recordId") );
    },

    callToApexServer: function(component, event, helper){
    	
    	var idAccount = component.get('v.recordId');

    	var action = component.get("c.methodToLightning");
    	action.setParams({
    		"idAccount": idAccount
    	});

    	action.setCallback(this, function(response){

    		console.log(response.getState());

    		console.log(response.getReturnValue());
    	});

    	$A.enqueueAction(action);
    }
})