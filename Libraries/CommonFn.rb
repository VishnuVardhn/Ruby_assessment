require 'yaml'
require 'rubyXL'

class cmn

	# Retrive Data from Config file
	def read_config(FieldName)
		config = YAML.load_file("config.yml")
		return config["config"][FieldName]
		
	end
	
	# Retrive Data from Config file
	def read_data(cat,FieldName)
		config = YAML.load_file("data.yml")
		return config[cat][FieldName]
		
	end

	# Retrive Data from Excel
	def GetData(TCID,FieldName)

	RelativePath = File.expand_path(File.dirname(File.dirname(__FILE__)))

	#Read Excel File
	workbook = RubyXL::Parser.parse( RelativePath + '\Data.xls')

	#Open WorkSheet
	worksheet = workbook['TestData']


		for i in 0..1000
			if worksheet[i][1]= TCID  then
					Ro = i
					break
			end
		end

		for j in 0..100
			if worksheet[1][j] = FieldName then
					Cl = j
					break
			end
		end

	Return worksheet[Ro][Cl].value
	end

	# Print Results
	def PrintResults(Exp,Act,Msg)
		verify {assert_equal{ Exp,Act,Msg}}
	end

	# Wait for 5 Seconds
	def wait_for(seconds=5)
	  Selenium::WebDriver::Wait.new(:timeout => seconds).until { yield }
	end

	# Quit Browser
	def teardown
	  @driver.quit
	end

	def displayed?(how, what)
  @driver.find_element(how,what).displayed?
  true
  rescue Selenium::WebDriver::Error::NoSuchElementError
    false
end

end


