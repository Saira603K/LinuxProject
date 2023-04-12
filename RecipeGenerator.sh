==================================================================
==================================================================
#!/bin/bash

# Greet the user with a chef icon
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

# Call the function to print the chef hat ASCII art
print_chef_hat

# Greet the user
name=$(whoami)
location=$(curl -s https://ipapi.co/city)
time=$(date +"%r")
echo "Hello $name! It's $time in $location."

# Main loop
while true; do
    echo "Please choose a category:"
    echo "1. Chicken"
    echo "2. Beef"
    echo "3. Vegetarian"
    echo "4. Seafood"
    read -p "Enter the number of your choice (or type 'q' to quit): " choice

    if [[ $choice == "q" ]]; then
        break
    fi

    display_recipe $choice

    # Prompt the user for their allergies
    read -p "Enter any ingredients you are allergic to (separated by commas): " allergies_input

    # Process the user input to create a list of allergies
    IFS=',' read -ra allergies <<< "$allergies_input"

    # Filter out recipes containing allergic ingredients
    filter_recipes() {
        local recipe_file=$1
        local temp_file=$(mktemp)

        cp "$recipe_file" "$temp_file"

        for allergy in "${allergies[@]}"; do
            grep -i -v -E "Ingredients:.*\b$allergy\b" "$temp_file" > "${temp_file}_filtered"
            mv "${temp_file}_filtered" "$temp_file"
        done

        cat "$temp_file"
        rm "$temp_file"
    }

    echo "Displaying recipes without your allergens:"
    filter_recipes "$(echo "${choice}_recipes.txt" | sed 's/1/chicken/; s/2/beef/; s/3/vegetarian/; s/4/seafood/')"

    read -p "Are you satisfied or do you want something sweet to try? (yes/no) " sweet_choice

    if [[ $sweet_choice == "yes" ]]; then
        echo "Glad you found what you're looking for! Goodbye!"
        break
    elif [[ $sweet_choice == "no" ]]; then
        echo "Let's find something sweet for you!"
        find_chocolate_chip_recipes() {
            local recipe_file=$1
            grep -i -E -B1 "chocolate chips" "$recipe_file" | grep -i -E "(chocolate chips.*){2,}"
        }

        echo "Displaying sweet tooth recipes..."
        cat sweet_tooth.txt
        echo "Displaying sweet tooth recipes with lots of chocolate chips..."
        find_chocolate_chip_recipes sweet_tooth.txt
    else
        echo "Invalid input. Please try again."
    fi
done



==================================================================
==================================================================

#creating a custom command.

172-26-2-101:~/project$ alias recipes='./recipe_generator.sh'
172-26-2-101:~/project$ recipes
👨‍🍳 Welcome to the Recipe Generator! 👩‍🍳
What kind of recipe would you like? (beef, chicken, seafood, vegetarian)

# it worked


==========================================================
#beef_recipes.txt 
# Beef and Broccoli Stir Fry
- 1 pound beef sirloin, sliced into thin strips
- 2 cups broccoli florets
- 2 tablespoons vegetable oil
- 2 cloves garlic, minced
- 1/2 teaspoon ground ginger
- 1/4 cup soy sauce
- 1/4 cup brown sugar
- 1 tablespoon cornstarch
- 1/4 cup water
- 2 cups cooked rice

1. Heat oil in a large skillet over medium heat.
2. Add beef and cook until browned.
3. Remove beef from skillet and set aside.
4. Add broccoli, garlic, and ginger to skillet and cook until broccoli is tender.
5. In a small bowl, whisk together soy sauce, brown sugar, cornstarch, and water.
6. Add beef and soy sauce mixture to skillet and cook until sauce thickens.
7. Serve over cooked rice.

# Beef Stroganoff
"beef_recipes.txt" 55L, 1815C                                 1,1           Top

===========================================================
#chicken_recipes.txt
# Chicken Parmesan
- 4 boneless, skinless chicken breasts
- 1 egg, beaten
- 1/2 cup seasoned breadcrumbs
- 1/2 cup grated Parmesan cheese
- 1/4 cup butter, melted
- 1 jar (16 oz.) spaghetti sauce
- 1 cup shredded mozzarella cheese

1. Preheat oven to 375°F.
2. Dip chicken in egg, then coat in breadcrumbs and Parmesan cheese.
3. Place chicken in a greased 9x13 inch baking dish.
4. Drizzle melted butter over chicken.
5. Bake for 25 minutes.
6. Pour spaghetti sauce over chicken and sprinkle with mozzarella cheese.
7. Bake an additional 15-20 minutes, or until cheese is melted and bubbly.
8. Serve with pasta or garlic bread.

# Chicken Fajitas
- 1 pound boneless, skinless chicken breasts, cut into strips
- 1 red bell pepper, sliced
- 1 green bell pepper, sliced
- 1 onion, sliced
"chicken_recipes.txt" 24L, 788C        
============================================================================
# Recipe Websites
- Allrecipes: https://www.allrecipes.com/
- Food Network: https://www.foodnetwork.com/
- Epicurious: https://www.epicurious.com/
- Bon Appétit: https://www.bonappetit.com/
- Serious Eats: https://www.seriouseats.com/
- Simply Recipes: https://www.simplyrecipes.com/

================================================================================





