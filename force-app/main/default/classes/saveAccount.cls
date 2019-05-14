public class saveAccount {

	private final Account cuenta;

	public saveAccount(ApexPages.StandardController stdCllr ) {
		this.cuenta = (Account)stdCllr.getRecord();
	}


	public String getSaludoNuevaCuenta(){
		return 'Hola software NextDoor. ' + this.cuenta.Name + ' <- esa es mi cuenta ';
	}


}