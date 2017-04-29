# This is our context class, the operator of strategies which uses WildDuck#fly, CityDuck#fly and CloudyDuck#fly interchangeably. It relies on strategies and let us know what type of #fly behavior the ducks posseses...
class FlyingDucks

	def initialize
		@duck = nil
	end

	def which_duck(fly_object)
		@duck = fly_object
	end

	def ducky_intro
		puts "****QUESTION****"
		puts "Hey duckies!! Introduce yourselves... "
		puts "\n"
	end


# We should be able to get the response of all the ducks without actually creating the different response class for all the ducks...
	def ducky_response
		@duck.fly
	end

end


# Strategies and its objects...
class Duck 

	def my_intro
		puts "****ANSWERS****"
	end

end

class WildDuck < Duck

	def fly
		puts "Hey! Am a wild duck and I fly in the forests..."
	end

end

class CityDuck < Duck

	def fly
		puts "Hey! Am a city duck and I don't fly instead lives in ponds..."
	end

end

class CloudyDuck < Duck

	def fly
		puts "Hey! Am a cloudy duck and I fly over the clouds..."
	end

end


context = FlyingDucks.new
context.ducky_intro

ducks = Duck.new
ducks.my_intro

wild_duck = WildDuck.new 
context.which_duck(wild_duck)
context.ducky_response

city_duck = CityDuck.new 
context.which_duck(city_duck)
context.ducky_response

cloudy_duck = CloudyDuck.new 
context.which_duck(cloudy_duck)
context.ducky_response


#STRATEGIES AND CONTEXT

=begin 

The Strategy pattern employs strategies, objects of which possess identical behavior. Our FlyingDucks relies on strategies to tell us what type of flying behavior they have. It's important that all strategy objects have the same responsiblity and support the same interface, which in our case was FlyingDucks.ducky_response.

The FlyingDucks class is our context class, the operator of the strategies, which uses the WildDuck#fly, CityDuck#fly, and CloudyDuck#fly interchangeably.

Through our contrived example, we see the immediate benefits of this design pattern:
Separation of concerns
Strategies at runtime

We've achieved separation of concerns by designating the #fly method as our desired set of strategies. WildDuck, CityDuck and CloudyDuck are unaware of our implementation of FlyingDucks#ducky_response.

As for runtime flexibility, we're able to switch out the items up on the FlyingDucks.

=end 
