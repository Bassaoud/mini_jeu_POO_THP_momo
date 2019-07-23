class Player
	attr_accessor :user_name, :life_points
	@@life_points = 10
	def initialize(user_name)
		@user_name = user_name
		@life_points = @@life_points 
	end

	def show_state
		puts "#{@user_name} a #{@life_points} points de vie"
	end

	def gets_damage(points)
		@life_points -= points
		if @life_points <= 0
			then
			#puts "#{user_name} a #{@life_points} points de vie"
		@life_points = 0
			puts "#{user_name} a rejoint son seigneur parce qu'il a #{life_points} point(s)"
		end
	end

	def attacks(player)
		puts "#{@user_name} a attaqué #{player.user_name}"
		points = compute_damage
		puts "#{player.user_name} a subi #{points} points de dommage"
		player.gets_damage(points)
	end

	def compute_damage
    	return rand(1..6)
  	end
end

class HumanPlayer < Player
	attr_accessor :weapon_level
	@@life_points = 100

	def initialize(user_name)
		@user_name = user_name
		@life_points = @@life_points
		@weapon_level = 1
	end

	def show_state
		puts "#{@user_name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
	end

	def compute_damage
    	rand(1..6) * @weapon_level
  	end
end