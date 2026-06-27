#!/bin/bash

# Created a function greet that takes a name as argument and prints Hello, <name>!
function greet(){

	echo " Hello my name is $1"




}
# Created a function add that takes two numbers and prints their sum
function add(){
	echo " The Addition of two number is $(($1 + $2))"

}
# Called both functions from the script
greet "Abusufiyan"
add 4 5
