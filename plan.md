create an api where you can access the ingredients or recipe

ingredient model
  :name
  :description

recipe model
  :name
  :description
  :instructions
  :rating
  :servings

recipes_ingredients join table


both can be sorted alphabetically
recipe can be sorted by rating
recipe possibly sorted by multiple ingredients?


routes
GET  /api/recipes
GET  /api/recipes/:id
GET  /api/ingredients
GET  /api/ingredients/:id
POST /api/recipes/:id
POST /api/ingredients/:id
DELETE /api/recipes/:id
DELETE /api/ingredients/:id


make routes
make serializers
make controller
