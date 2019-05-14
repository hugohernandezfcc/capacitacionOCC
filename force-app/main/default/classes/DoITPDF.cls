/**
 * @author Hugo Hernández <hugo@doitcloud.consulting>
 * @version 1.0.0
 *
 * Controller used to pass parameters to Visualforce rendered as a PDF page invoked from a lightning component.
 */
public with sharing class DoITPDF {

	/**
	 * Variable Id to catch record Id of current page layout of any object.
	 */
	public Id recordId{get;set;}

	/**
	 * [DoITPDF Constructor responsable of pass id parameter to visualforce page into URL]
	 */
	public DoITPDF() {
		recordId = System.currentPageReference().getParameters().get('recordId');
		System.debug(recordId);
	}
}