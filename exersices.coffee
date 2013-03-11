doAndRepeatUntil = (body, condition) ->
	body()
	body() while condition()

x = 0

testCond = -> x < 10

testBody = -> 
	x++
	console.log(x)

doAndRepeatUntil(-> (x++; console.log(x)), -> x < 10)
