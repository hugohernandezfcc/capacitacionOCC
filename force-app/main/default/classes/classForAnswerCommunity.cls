global with sharing class classForAnswerCommunity  {
	public classForAnswerCommunity () {
		System.debug('Starting my help :D');	
	}


	@RemoteAction
    global static String callToServer(String param) {

    	System.debug('---> '+ param);

        HttpRequest req = new HttpRequest();
		Http http = new Http();        
		String url = 'http://api.xxx.com/quickbooks/createinvoice?invoiceRefNumber='+EncodingUtil.urlEncode('TheInvoiceReferenceNumber','UTF-8')+'&price='+EncodingUtil.urlEncode('TheInvoicePrice','UTF-8')+'&date='+EncodingUtil.urlEncode('TheInvoiceDate','UTF-8');
		
		req.setEndpoint(url);
		req.setMethod('POST');

		HTTPResponse resp = http.send(req);
		        

		if(resp.getBody() != null)
			return 'Response of server: '+resp.getBody();
		else
			return 'Call failure';
    
    }
}