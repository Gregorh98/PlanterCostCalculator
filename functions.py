def getDimensions():
	height = input("What is the height? >> ")
	width = input("What is the width? >> ")
	length = input("What is the length? >> ")
	height, width, length = validateInput(height, width, length)

	return (height, width, length)

def calculateMarkup(totalCost, markup):
	totalMarkup = totalCost + ((markup/100)*totalCost)
	return totalMarkup
