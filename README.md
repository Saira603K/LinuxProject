# LinuxProject

#!/bin/bash

calculate_calories() {
    ingredients_file=$1
    shift
    total_calories=0
    for ingredient in "$@"; do
        ingredient_calories=$(grep "$ingredient" "$ingredients_file" | awk '{print $NF}' | xargs)
        total_calories=$((total_calories + ingredient_calories))
    done
    echo "The total calorie count for the recipe is $total_calories."
}

calculate_calories chicken_calories.txt "boneless skinless chicken breast" "egg" "seasoned breadcrumbs" "grated Parmesan cheese" "butter, melted" "spaghetti sauce" "shredded mozzarella cheese"

-----x-----

In this example, we define a function called calculate_calories that takes two arguments: the path to the file containing the calorie information for each ingredient, and the list of ingredients in the recipe. We use a for loop to iterate over the ingredients and calculate the total calorie count for the recipe. Finally, we print out the total calorie count using echo.

To use the function, we call it with the path to the chicken_calories.txt file and the list of ingredients for the recipe. This way, the ingredients can be changed every time we run the script.



