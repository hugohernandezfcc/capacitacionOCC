public class ClassCapacitacion {
    
	public Account cuentaOcc{get;set;}
    public static List<Contact> persistedContacts;

    public ClassCapacitacion(){
        System.debug('Ejecutando desde nuestro contructor');
    }
    
    public static void informationContact(List<Contact> cc){
        persistedContacts = cc;
    }
    
    public static List<Contact> informationContactToAfter(){
        return persistedContacts;
    }
	
    public class mapsObjet{
        public Integer id;
        public String name;
        public String state;
    }
    
    @future(callout=true)
    public static void httpInformationTrigger(){
        HttpRequest solicitud = new HttpRequest();
        solicitud.setEndpoint('https://doitapplicationcloud.herokuapp.com/projects');
        solicitud.setMethod('GET');
        
		        
        Http http = new Http();
        HTTPResponse res = http.send(solicitud);
        //System.debug((Map<String, List<mapsObjet> >)JSON.deserializeUntyped(res.getBody()));
        System.debug((Map<String, Object >)JSON.deserializeUntyped(res.getBody()));
        
    }
    
    public static String EmailReturnedAccount(Id idAcc){
        
        Account acc = new Account();
        acc = [SELECT Fax FROM Account WHERE Id =: idAcc LIMIT 1]; 
            
        return acc.Fax;
    }
    
    
}