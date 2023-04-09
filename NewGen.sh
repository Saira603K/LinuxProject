#!/bin/bash

recipes_dir="/Users/aaliyahsalia/CS230project"

#Greeting!

#We will greet the user with the chef icon
function print_chef_hat() {
 echo "_____________________"
  echo "   /\       /\      "
  echo "  /  \_____/  \     "
  echo " /             \    "
  echo "/_______________\   "
  echo "|^^^^^^^^^^^^^^^|   "
  echo "|               |   "
  echo "|     AASSK     |   "
  echo "|     US!       |   "
  echo "|               |   "
  echo "|_______________|   "
}

#We will call the function to print the chef hat.
print_chef_hat

echo "Gooday! Welcome to AASSK US! Your friendly Recipe Generator where we make your life easy!"
echo "What's your name?"
read name
echo "Hello, $name!" 
echo "Here are your options for today, $name :)"

display_recipe() {
    cuisine_file="$recipes_dir/$1.txt"
    echo "Please enter recipe name or keyword(s):"
    read keyword
    echo "Searching for recipes containing $keyword"
    recipe=$(awk -v RS= -v IGNORECASE=1 -v keyword="$keyword" '$1 ~ keyword || $0 ~ keyword {print}' "$cuisine_file")
    if [ -n "$recipe" ]; then
        echo "Here is your recipe!"
        echo "$recipe"
        echo ""
        echo ""
        echo "1) Pakistani"
        echo "2) Indian"
        echo "3) Mexican"
        echo "4) Quit"
        echo ""
        while true; do
            read -p "Please select a cuisine: " choice
            case $choice in
                [1])           
                    display_recipe pakistani            
                    ;;
                [2])
                    display_recipe indian
                    ;;
                [3])
                    display_recipe mexican
                    ;;
                [4])
                    exit 0              
                    ;;
                *)
                    echo "Invalid choice, please try again."
                    ;;
            esac
        done
    else
        echo "No recipes found for the entered name or keyword(s)."
    fi
}


PS3="Please select a cuisine: "
options=("Pakistani" "Indian" "Mexican" "Quit")

pakistani_file="./pakistani.txt"
indian_file="./indian.txt"
mexican_file="./mexican.txt"

while true; do
	select opt in "${options[@]}"
	do
    		case $opt in
        		"Pakistani")
            			echo "You chose Pakistani cuisine"
            			display_recipe "pakistani"
				break
            			;;

        		"Indian")
            			echo "You chose Indian cuisine"
            			display_recipe "indian"
				break
            			;;
        		"Mexican")
            			echo "You chose Mexican cuisine"
            			display_recipe "mexican"
				break
            			;;
        		"Quit")
            			exit 0
            			;;
        		*) echo "Invalid option $REPLY";;
    		esac
	done
done
