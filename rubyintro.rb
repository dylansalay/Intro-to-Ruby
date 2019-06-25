# Arithmetic Challenge

p 5 + 5
p 100 - 45
p 9 * 9
p 25/5
p 25/8
p 25.0/8
p 25/8.0
p 25%8
#p 25/0
#p 0/0

# Variables Challenge
my_favorite_number = 24
p my_favorite_number
p my_favorite_number / 2
someones_favorite = 13
someones_favorite = 7
p someones_favorite
p someones_favorite - my_favorite_number
my_favorite_number = my_favorite_number * 26
p my_favorite_number

# Strings Challenge
my_name = 'dylan salay'
p my_name.upcase
p my_name.reverse
p my_name.include?'d'
p my_name.capitalize

p "my name is #{my_name}"

# Array Challenges

p arr = ['Wedding Crashers','Forgetting Sarah Marshall','Lord of the Rings', 'the Matrix','Finding Nemo','John Wick', 'Troy', 'Pulp Fiction', 'True Romance','Lion King']

new_arr = [arr[1],arr[6],arr[8]]
p new_arr

p arr.length

p arr.reverse

p arr.slice(1)

p arr.rotate(4)

p arr[rand(arr.length)]

# Challenges:
=begin
Write a loop that prints from 1 to 20. Try it with all the loops covered in this lesson. Do it again counting down from 20 to 1.
=end

i = 1
while i <= 20 do
    p i
    i+=1
end

i = 20
while i >= 1 do
    p i
    i-=1
end

=begin
Write a program which takes a number and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.
=end

def val_inval(numm)
    if numm >=1 && numm <= 10
        'Valid'
    else
        'Invalid'
    end
end

p val_inval(8)

=begin
FIZZBUZZ - Write a program that prints the numbers from 1 to 100. But for multiples of three print Fizz instead of the number and for the multiples of five print Buzz. For numbers which are multiples of both three and five print FizzBuzz
=end

def fizzbuzz()
    i = 1
    while i < 100 do
        i+=1
        if i%3==0 && i%5==0
            p 'FizzBuzz'
        elsif i%3==0
            p 'Fizz'
        elsif i%5==0
            p 'buzz'
        else
            p i
        end
    end
end

print fizzbuzz()

=begin
Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.
=end

def sum_these_numbers(int1, int2)
    p int1+ int2
end

sum_these_numbers(3,6)

=begin
Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.
=end

def is_even(int3)
    if int3%2 ==0
        'True'
    else
        'False'
    end
end

p is_even(10)

=begin
Create an array of words. Iterate through the array using .each and a block, then print each of those words in all capitals.
=end

arr = ['word1','word2','word3','word4','word5']

arr.each do |i|
    p i.upcase
end

=begin
Rock, Paper, Scissors

Using if, elsif, and else blocks, write a function called rps_game which allows two users to input their moves in "Rock, Paper, Scissors" and which determines the winner (or if a tie occurred).
=end

def rps_game(player1, player2)
    if player1 == 'Rock' && player2 == 'Scissors'
        p "player 1 beats player 2"
    elsif player1 == 'Scissors' && player2 == 'Rock'
        p "player 2 beats player 1"
    elsif player1 == 'Paper' && player2 == 'Rock'
        p "player 1 beats player 2"
    elsif player1 == 'Rock' && player2 == 'Paper'
        p "player 2 beats player 1"
    elsif player1 == 'Scissors' && player2 == 'Paper'
        p "player 1 beats player 2"
    elsif player1 == 'Paper' && player2 == 'Scissors'
        p "player 2 beats player 1"
    elsif player1 == player2
        p 'Tie'
    else
        p 'Try Again!'
    end
end

rps_game('Rock','Paper')
rps_game('Paper','Scissors')
rps_game('Rock','Rock')
rps_game('Rock','Scissors')

#Valid Date

=begin
Write a function called valid_date that prompts the user for a date with a month, date, and year (all numerically expressed) and returns 'true' if this date exists and 'false' if it does not (for example: 7 28 2014 exists, but 22 34 1999 does not). Make sure to account for leap years. This program is easiest if you prompt for the month, date, and year separately.
=end

require 'date'
p DateTime.now
def valid_date(date)
    Date.strptime(date, '%m-%d-%y')
    true
rescue
    false
end

p valid_date('4-47-1934')
p valid_date('2-29-2020')
p valid_date('3-13-2011')

=begin
Password Checker Challenge
You are writing the user registration page for a secure web site. On the registration page, the user has to enter a user ID and a password, which has to adhere to the to following criteria:

User ID and password cannot be the same
User ID and password have to be at least six characters long
Password has to contain at least one of: !#$
User ID cannot contain the following characters: !#$ and space
Password cannot be the word "password"
Proceed as follows:
=end

# 1 Challenge: Write a function called same that takes a user ID and a password, and returns true if they are, and false otherwise.
def same(user_id, password)
    if user_id == password
        'True'
    else
        'False'
    end
end

p same("joe", "joe")
p same("joe", "joe1")

# 2 Challenge: Write a function called long_enough that checks whether a String is at least six characters long, and returns true if it is, and false otherwise. Tests:

def long_enough(user_id, password)
    if user_id.length >= 6 && password.length >= 6
        'True'
    else
        'False'
    end
end

p long_enough("12345",'dfwrfwrfrwf')
p long_enough("123456",'ewfrefwefw')

# 3 Challenge Write a function called does_not_contain_special which checks to see if !, #, $ is not contained in a given String. Tests:

def does_not_contain_special(str)
    if str.include?'#'
        'False'
    elsif str.include?'!'
        'False'
    elsif str.include?'$'
        'False'
    else
        'True'
    end
end

p does_not_contain_special("Hello Friend")
p does_not_contain_special("A#C")
p does_not_contain_special("A!C")
p does_not_contain_special("A$C")

# 4 Challenge Write a method that inputs user ID and password from the user, and then tells the user if the they are acceptable. Write a main method called validate_password that:

def validate_password()
    puts 'Enter your User ID'
        user_id = gets
    puts 'Enter your password'
        password = gets
    if same(user_id,password) == 'True'
        p 'user ID and password cannot match'
    elsif long_enough(user_id, password) == 'False'
        p 'user ID and password must be at least 6 characters'
    elsif does_not_contain_special(password) == 'True'
        p 'password must include a symbol #, ! or $'
    elsif user_id.include?('#') or user_id.include?('!') or user_id.include?('$') or user_id.include?(' ')
        p 'user ID cannot include the following symbols #, ! or $'
    elsif password == 'password'
        p 'password cannot be the word "password"'
    else
        p 'User ID and password are acceptable'
    end
end
validate_password()


# 5 Password has to contain at least one digit Task: Write a function using basic functions on String to see if a given String contains contains one of "0","1", "2", "9". Tests:
def has_digit(str)
    if str.include?('0') or str.include?('1') or str.include?('2') or str.include?('9')
        'True'
    else
        'False'
    end
end
p has_digit("abc")
p has_digit("a1c")

# 6 Password has to contain a lower and an uppercase letter. Tests:

def has_upper_and_lowercase(str)
    if str.count('A-Z') >= 1 && str.count('a-z') >= 1
        'True'
    else
        'False'
    end
end

p has_upper_and_lowercase("abc")
p has_upper_and_lowercase("aBc")
p has_upper_and_lowercase("123")
