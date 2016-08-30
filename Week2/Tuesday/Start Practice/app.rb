require "sinatra"


get "/" do
	erb(:home)
end

get "/high" do
@name = "Neo"

	erb(:hi_page)
end

get "/about" do
	erb(:about)
end

get "/recipe" do
	@name = "Red Velvet Cake"
	@ingredients = [
	"eggs",
	"flour",
	"sugar",
	"red food colorings",
	"cocoa",
	"buttermilk",
	"cream cheese"
	]

	erb(:recipe_page)
end

users = {
	"danielito11" => {:name => "Daniel Barenboim", :email => "Barendan@gmail.com" },
	"josh" => {:name => "Josh Alexy", :email => "joshalexy231@hotmail.com" }
}

get "/users/:username" do
	@name =	params[:username]
	
	if @name == "danielito11" || @name == "daniel"
		erb(:shake_shake)	
	else
	@info = users[@name]
	erb(:user_profile)
	end
end






