require_relative 'CommonFn.rb'

class validate

		tx1 = driver.find_element(:ID,'txt_val_1').text
		tx2 = driver.find_element(:ID,'txt_val_2').text
		tx3 = driver.find_element(:ID,'txt_val_3').text
		tx4 = driver.find_element(:ID,'txt_val_4').text
		tx5 = driver.find_element(:ID,'txt_val_5').text
		tot1 = driver.find_element(:ID,'txt_ttl_val').text


	def checkZero()

	#Get all the values in webedit

		
		if (tx1 > 0 ) AND (tx2 > 0 ) AND (tx3 > 0) AND (tx4 > 0) AND (tx5 >0)
			Flag = 1
		else
			Flag = 0
		end

		PrintResults { Flag,1,"All values matched")
		
		
	end

	def checkcurrency(Cny)

		if (tx1[0] = Cny ) AND (tx2[0] = Cny ) AND (tx3[0] = Cny) AND (tx4[0] = Cny) AND (tx5[0] = Cny)
			Flag1 = 1
		else
			Flag1 = 0
		end

		PrintResults (Flag1,1,"All values are in expected currency:" + Cny)
	end

	def checkdata(T1,T2,T3,T4,T5)
		PrintResults (txT1,T1],"Data Matched")
		PrintResults (txT2,T2],"Data Matched")
		PrintResults (txT3,T3],"Data Matched")
		PrintResults (txT4,T4],"Data Matched")
		PrintResults (txT5,T5],"Data Matched")
	end

	def checktotal
	# Calculate Total
	tot = tx1 + tx2 + tx3 + tx4 + tx5

	#Asserting whether Total matched

	PrintResults (tot1,tot,"Total Matched")
	
	end
	
end