module ApplicationHelper

	class TableTag
		
		def initialize
			@actions = Array.new
			@attributes = nil
		end

		def display_columns(*columns)
			@attributes = columns
		end

		def add_action(action_hash)
			@actions << action_hash
		end

		attr_accessor :attributes, :actions
		
	end
	
	def generate_model_table(model)
		table_object = TableTag.new
		yield table_object
		render :partial => "model_table", :locals => {:model_array => model, :attributes => table_object.attributes, :actions => table_object.actions}
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