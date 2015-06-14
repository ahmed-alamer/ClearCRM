module ApplicationHelper
	
	def genearte_model_table(parameters)
		puts parameters[:actions]
		render :partial => "model_table", :locals => {:object_list => parameters[:model], :attributes => parameters[:attributes], :actions => parameters[:actions]}
	end

	def camel_case(word) 
		if word == "id"
			return "ID"
		end
		return word.slice(0,1).capitalize + word.slice(1..-1)
	end

	def generate_label(attribute)
		result = ""
		attribute = "#{attribute}"
		if attribute.include? "_"
			attribute.split("_").each do |word|
				result =  result + camel_case(word) + " "
			end
			return result.chop
		end		
		result = camel_case(attribute)
	end

end
