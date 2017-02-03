pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      }

def nyc_pigeon_organizer(data)	
	pidgeon_list = {}
	data.each do |category, data_values|
		data_values.each do |specific, names|
			names.each do |pidgeon_name|
				if !pidgeon_list.keys.include?(pidgeon_name)
					
					pidgeon_list[pidgeon_name] = {
						:color => [],
				    	:gender => [],
				    	:lives => []
					}
					pidgeon_list[pidgeon_name][category].push(specific.to_s)			
				else
					pidgeon_list[pidgeon_name][category].push(specific.to_s)
				end

			end
		end
	end
	pidgeon_list
end

