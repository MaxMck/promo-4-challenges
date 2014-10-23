class RepositoryOrder

attr_reader :orders

 def initialize
   @orders = []
   order_1 = Order.new({"Cheese Burger" => 1}, "Alex", "John")
   order_2 = Order.new({"Cheese Burger" => 3}, "Zlatan", "Tom")
   order_3 = Order.new({"Burger"=> 2}, "Alex", "Albert")
   @orders << order_1
   @orders << order_2
   @orders << order_3
 end
end