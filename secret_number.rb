###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################

def get_input
	gets.to_s
end

def gen_random
	Random.rand(1..10) #generate random number between 1 to 10 
end

def player_attempt (actual_num)
 puts "Enter number :"
 num1 = gets.to_i #casting the user input to integet type 
 if num1 > 10 || num1 < 1
 	puts " Enter numbers between 1 and 10 only.This is not a valid number"
 else

 if num1 == actual_num
 	puts "Congrats ! You have guessed the secret number"
 else 
 	puts "Sorry ! You have 2 more tries.Keep playing .. ! "
 	   if num1 < actual_num
 	   	puts " Hint : Think higher "
 	   else 
 	   	puts "Hint : Think lower "
 	   end 
 	   num2 = gets.to_i
 	   if num2 ==actual_num
 	   	puts " Congrats ! You have guessed the secret number"
 	   else 
 	   	puts "Bummer ! Wrong again ! One more try "
 	   	    if num2 < actual_num 
 	   	    		puts " Hint : Think higher "
 	   	    else
 	   	    	  puts "Hint : Think lower "
 	   	    end 
 	   	    num3 = gets.to_i
 	   	    if num3 == actual_num 
 	   	    	puts " Congrats ! You have guessed the secret number"
 	   	    else 
 	   	    	puts "Sorry ! No more tries ! Game over !  "
 	   	    end 

 	   end 

 end 

 puts "The secret number was #{actual_num}"
end
end


puts "Enter you name : "
player_name = get_input 
puts
puts "Hi #{player_name.upcase} " + " Welcome to Guess Secret number ! "
puts "As per this game ,you have to guess a number between 1 and 10 and have 3 tries to do so"
actual_num = gen_random
player_attempt (actual_num)


