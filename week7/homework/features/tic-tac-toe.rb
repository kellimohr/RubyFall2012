class TicTacToe

	attr_accessor :player, :computer, :player_symbol, :computer_symbol, :X, :O
	#TicTacToe = [:X,:O]

	def initialize(starter=nil, symbol=nil)
		@starter = starter
		@symbol = symbol

		unless @symbol.nil?
			if @starter == "Computer"
				@computer_symbol = @symbol
				@computer = "Computer"
			else
				@player_symbol = @symbol
				@player = @starter
			end
		end

		current_player

		@board = {
				:A1 => " ", :A2 => " ", :A3 => " ",
      			:B1 => " ", :B2 => " ", :B3 => " ",
      			:C1 => " ", :C2 => " ", :C3 => " "
		}
	end

	def welcome_player
		"Welcome #{@player}"
	end

	def current_player
		if @symbol.nil?
			@player_symbol = :X
			@computer_symbol = :O
			@current_player = [@player, "Computer"].sample
		else
			@current_player = @starter
			if @player_symbol == :X then @computer_symbol = :Y else @computer_symbol = :X end
			if @computer_symbol == :X then @player_symbol = :Y else @player_symbol = :X end	
		end
		@current_player
	end

	def get_player_move()
		
		#@current_player = (@current_player == TicTacToe::X) ? TicTacToe::O : TicTacToe::X
		@get_player_move = gets.chomp
	end

	def indicate_player_turn
		puts "#{@current_player}'s Move:"
		@indicate_player_turn = @current_player
	end

	def indicate_player_move
		@indicate_player_move
	end

	def computer_move
		@computer_move
	end

	def player_move
		@player_move
	end

	def current_state
		@current_state = @board.values
	end
	
	def board(player_move)
		@player_move = player_move

		@board = [player_move]
	end

	def determine_winner
		@winning_combos = [
  			[:A1,:A2,:A3],
			[:B1,:B2,:B3],
			[:C1,:C2,:C3],
			[:A1,:B1,:C1],
			[:A2,:B2,:C2],
			[:A3,:B3,:C3],
			[:A1,:B2,:C3],
			[:C1,:B2,:A3]
		]

		


	end

	def open_spots
		@open_spots = board.delete_if{|k,v| {} == v.delete_if{|a,b| b==""}}
		if @board.inject.include(" ") then true else false end
	end

	def draw
	end

	def player_won
	end

	def computer_won
	end

	def over
	end
end