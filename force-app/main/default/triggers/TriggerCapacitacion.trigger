trigger TriggerCapacitacion on Account (before insert, after insert, after update) {
    
    List<Contact> listContacts = new List<Contact>();
    
    if(trigger.isBefore && trigger.isInsert){
        
        listContacts.add(new Contact(FirstName = '1Hugo', LastName = '1Hernández', Email = '1hugo@occ.mx'));
        listContacts.add(new Contact(FirstName = '2Hugo', LastName = '2Hernández', Email = '2hugo@occ.mx'));        
        ClassCapacitacion.informationContact(listContacts);
    }
    
    if(trigger.isAfter && trigger.isInsert){
		listContacts = ClassCapacitacion.informationContactToAfter();
        for(Contact cc: listContacts)
            cc.AccountId = trigger.new[0].Id;
        
        System.debug(listContacts);
    }
   
    
    if(trigger.isAfter){
        ClassCapacitacion.httpInformationTrigger();
    }
    
    /**

    if(trigger.isAfter && trigger.isUpdate){
        System.debug(' Me estoy ejecutando al actualizar');   
         
	    String toDebug = ClassCapacitacion.EmailReturnedAccount(trigger.new[0].id);
        System.debug('my fax: ' + toDebug);  
    }
*/
}