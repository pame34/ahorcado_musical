
Feature:
	Como jugador
	Quiero tener la opcion de adivinar una palabra
	Para poder divertirme

Scenario: ver un titulo de bienvenida
	Given abro la aplicacion 
	Then debo ver "Bienvenido a AHORCADO MUSICAL"
	
Scenario: para la palabra "CHANTAJE"
	Given abro la aplicacion 
	Then debo ver "_ _ _ _ _ _ _ _" guiones bajos
	
Scenario: para la palabra "HOLA"
	Given abro la aplicacion 
	Then debo ver "_ _ _ _" guiones bajos