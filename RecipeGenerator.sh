#creating a custom command.

172-26-2-101:~/project$ alias recipes='./recipe_generator.sh'
172-26-2-101:~/project$ recipes
👨‍🍳 Welcome to the Recipe Generator! 👩‍🍳
What kind of recipe would you like? (beef, chicken, seafood, vegetarian)

# it worked
================================================================

#!/bin/bash

# Greet the user with a chef icon
echo "👨<200d>🍳 Welcome to the Recipe Generator! 👩<200d>🍳"

# Define the recipe files
BEEF_FILE="beef_recipes.txt"
CHICKEN_FILE="chicken_recipes.txt"
SEAFOOD_FILE="seafood_recipes.txt"
VEGETARIAN_FILE="vegetarian_recipes.txt"

# Define the functions
function generate_recipe() {
  case $1 in
    beef)
      recipe_file="$BEEF_FILE"
      echo "Here is $1 recipe." | cat beef_recipes.txt
      ;;
    chicken)
      recipe_file="$CHICKEN_FILE"
      echo "Here is $1 recipe." | cat chicken_recipes.txt
      ;;
    seafood)

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


