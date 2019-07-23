require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

#binding.pry

player1 = Player.new("Josiane")
player2 = Player.new ("José")

puts "Voici l'état de chaque joueur :"
print player1.show_state
print player2.show_state

while player1.life_points > 0 && player2.life_points > 0
	puts "Passons à la phase d'attaque :" 
	player1.attacks(player2)
	if  player2.life_points == 0
		then
		break
	else
		player2.attacks(player1)
	end
end

