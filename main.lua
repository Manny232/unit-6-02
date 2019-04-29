display.setDefault( "background", 0, 160, 50 )

local calculateButton = display.newImageRect( "calculatebutton.png", 200, 100 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"

print( "pick a number to see if its positive or Negative" )


local answerAsNumberField = native.newTextField( display.contentCenterX, display.contentCenterY + 120, 225, 40 )
answerAsNumberField.id = "Answer textField"

local answerfield = display.newText( "is it Positive or Negative", 160, 150, native.systemFont, 30 )
answerfield:setFillColor( 100, 100, 100 )

local function calculateButtonTouch( event )

local answerAsNumber = tonumber(answerAsNumberField.text)

if answerAsNumber < 0 then
 answerfield.text = "Negative Number"

else 
	
	answerfield.text = "Positive number"
end

if answerAsNumber == 0 then
	answerfield.text = "Neutral number"
end
end

calculateButton:addEventListener( "touch", calculateButtonTouch )
