# This displays a very simple graphic tic tac toe board
class Tic_tac_toe
    attr_reader :board #:player1, :player2

    def initialize
        @board = Array.new(3) {Array.new(3, " ")}
        # @player1 = Player.new
        # @player2 = Player.new
    end
##################################################
    def game_instruction
        print "\n"
        puts "Do you want to play Tic-Tac-Toe?"
        print "\n" * 2
        puts " 1 | 2 | 3    The positions to play on the tic-tac-toe board are"
        puts "---|---|---   represented by number 1-9 as shown."
        puts " 4 | 5 | 6    To place an 'X' or 'O' in a certain position,"
        puts "---|---|---   simply enter the number of that position."
        puts " 7 | 8 | 9 "
        print "\n"
    end
##################################################
    def play_game
        game_instruction
        players
        board
        player_move
    end
###################################################
    def players
        puts "Player 1, would you like to be X or O? "
        player1 = gets.chomp
        # puts "Great! Player 1 is #{@player1}"
    
            if player1 == "X"
                player2 = "O"
            else
                player2 = "X"
            end

        puts "Great! Player 1 is #{player1} and Player 2 is #{player2}"
        print "\n"
    end
###################################################
    def board
        (0..2).each do |row|
            print "       "
            (0..2).each do |col|
                print @board[row][col]
                print " | " unless col == 2
            end
            print "\n"
            print "       ---------\n" unless row == 2
        end
        print "\n"
    end
######################################################
    def player_move
        print "\n"
        print "Player 1, which space do you choose?"
            move = gets.chomp.to_i - 1
            row = move / 3
            col = move % 3
            return row.col
    end
######################################################
end

Tic_tac_toe.new.play_game
