Product.delete_all
Product.create(:name => 'Pepperoni Pizza',
  :ingredients =>
    %{<p>
        <em>Ingredients: Pepperoni, Cheese, Tomato Sauce, Herbs.
      </p>},
  :image_url =>   '/images/pepperoni pizza.jpg',
  :price => 13.00)
# . . .
Product.create(:name => 'Deluxe Pizza',
  :ingredients =>
    %{<p>
        <em>Ingredients: Pepperoni, Peppers, Mushrooms, Cheese, Tomato Sauce, Herbs.
      </p>},
  :image_url =>   '/images/deluxe pizza.jpg',
  :price => 13.00)
# . . .
Product.create(:name => 'Super Deluxe Pizza',
  :ingredients =>
    %{<p>
        <em>Ingredients: Pepperoni, Spicy Beef, Onions, Peppers, Mushrooms, Cheese, Tomato Sauce, Herbs.
      </p>},
  :image_url =>   '/images/super deluxe.jpg',
  :price => 14.00)
# . . .

Product.create(:name => 'Vegetarian Pizza',
  :ingredients =>
    %{<p>
        <em>Ingredients: Tomatoes, Peppers, Mushrooms, Cheese, Tomato Sauce, Herbs.
      </p>},
  :image_url =>   '/images/vegetarian pizza.jpg',
  :price => 12.00)
# . . .
Product.create(:name => 'Mediterranean Pizza',
  :ingredients =>
    %{<p>
        <em>Ingredients: Black Olives, Sun-Dried Tomatoes, Peppers, Onions, Broccoli, Cheese, Tomato Sauce, Herbs.
      </p>},
  :image_url =>   '/images/Mediterranean.jpg',
  :price => 13.00)
# . . .
Product.create(:name => 'Spinach, Feta, & Onion Pizza',
  :ingredients =>
    %{<p>
        <em>Ingredients: Spinach, Feta, Onions, Peppers, Tomato Sauce, Herbs.
      </p>},
  :image_url =>   '/images/Spinach pizza.jpg',
  :price => 13.00)
# . . .
Product.create(:name => 'Spaghetti Bolognese',
  :ingredients =>
    %{<p>
        <em>Ingredients: Spaghetti, Mince, Tomato Sauce, Herbs.
      </p>},
  :image_url =>   '/images/bolognese1.jpg',
  :price => 11.00)
# . . .
Product.create(:name => 'Pasta Bake with Meatballs',
  :ingredients =>
    %{<p>
        <em>Ingredients: Fusili Pasta, Meatballs, Parmesan Cheese, Tomato Sauce, Garlic, Herbs.
      </p>},
  :image_url =>   '/images/pasta bake with meatballs1.jpg',
  :price => 12.00)
# . . .
Product.create(:name => 'Vegetarian Pasta',
  :ingredients =>
    %{<p>
        <em>Ingredients: Tagliatelle Pasta, Mushrooms, Peppers, Coriander, Tomato Sauce, Garlic, Herbs.
      </p>},
  :image_url =>   '/images/Vegetarian pasta.jpg',
  :price => 11.00)
# . . .
Product.create(:name => 'Spaghetti Carbonara',
  :ingredients =>
    %{<p>
        <em>Ingredients: Spaghetti Pasta, Cream, Bacon, Pepper,Egg, Garlic, Herbs.
      </p>},
  :image_url =>   '/images/carbonara.jpg',
  :price => 11.00)
# . . .







