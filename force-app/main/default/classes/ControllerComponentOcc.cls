public with sharing class ControllerComponentOcc {

    public ControllerComponentOcc() {

    }

    @AuraEnabled
    public static List<Contact> methodToLightning(Id idAccount){

    	return [select id, FirstName, LastName 
    			from Contact 
    			Where AccountId =: idAccount];
    }

}