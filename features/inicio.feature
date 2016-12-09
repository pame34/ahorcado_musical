
Feature:
	Como jugador
	Quiero tener la opcion de adivinar una palabra
	Para poder divertirme

Scenario: ver un titulo de bienvenida
	Given abro la aplicacion 
	Then debo ver "Bienvenido a AHORCADO MUSICAL"

	
Scenario: para la palabra "CHANTAJE"
	Given abro la aplicacion 
	Then debo ver "_______" guiones bajos


Scenario: ver un campo que me permita ingresar una letra
	Given abro la aplicacion 
	 Then debo ver "LetraBuscar"
	