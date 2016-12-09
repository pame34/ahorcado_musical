
Feature:
	Como jugador
	Quiero tener la opcion de adivinar una palabra
	Para poder divertirme

Scenario: ver un titulo de bienvenida
	Given abro la aplicacion 
	Then debo ver "Bienvenido a AHORCADO MUSICAL"


Scenario: tener un campo donde ingresar la letra a buscar
	Given abro la aplicacion 
	  And visualizo el campo
	Then debo ver "Bienvenido a AHORCADO MUSICAL"
	