require "sinatra"
require "artii"


get "/ascii/:word/?:font_type?" do
	font = params[:font_type]
	change_word = params[:word]

	
	

	if font == "alligator" || "avatar" || "3-d"
	asciifier = Artii::Base.new(:font => font)

	else
	asciifier = Artii::Base.new(:font => "doh")
	end
	
	@new_word = asciifier.asciify(change_word)
	erb(:edit_text)
end



