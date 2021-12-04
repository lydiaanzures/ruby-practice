grocery_list = ["bananas", "oat milk", "mango", "nutritional yeast", "zucchini", "endive", "basil", "raspberries", "avocado", "lemon"]

grocery_list.each_with_index do | food_item, index |
    puts "#{index}. #{food_item}"
end