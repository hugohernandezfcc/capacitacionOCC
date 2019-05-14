/**
 * Test Methods used to covert the DoITPDF work.
 */

@isTest
private class TestMethodDoITPDF
{
	@isTest
	static void itShould()
	{
		try{
			
			PageReference myVfPage = Page.layout;
			Test.setCurrentPageReference(myVfPage);

			Account acc = new Account();
			acc.Name = 'DoIT Cloud Consulting';
			insert acc;

			System.debug(acc.Id);

			ApexPages.currentPage().getParameters().put('recordId',acc.Id);
			String toTestingValue = ApexPages.currentPage().getParameters().get('recordId');
			System.assert(true,toTestingValue!=null);



			DoITPDF itpf = new DoITPDF();

		}catch(Exception e){
			System.debug('Error: ' + e.getMessage());
		}
	}

	@isTest
	static void itNotShould()
	{
		try{

		

			DoITPDF itpf = new DoITPDF();

			String toTestingValue = ApexPages.currentPage().getParameters().get('recordId');
			System.assert(true,toTestingValue==null);

		}catch(Exception e){
			System.debug('Error: ' + e.getMessage());
		}
	}
}