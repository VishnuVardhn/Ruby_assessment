require_relative 'validate.rb'

@Then ("^I should see values in Text fields greater then zero $") 

browser.validate.checkzero

@AND ("^ I should see all the values in Text fields displayed as expected $")

browser.validate.checkdata(cmn.read_data('Val','TXT1'),cmn.read_data('Val','TXT2'),cmn.read_data('Val','TXT3'),cmn.read_data('Val','TXT4'),cmn.read_data('Val','TXT5'))

@AND ("^ I should see all the values are in expected currency $")

browser.validate.checkcurrency(cmn.read_data('Val','currency'))

@AND ("^ I should see the total match $")

browser.validate.checktotal
