class Plank():
	def __init__(self):
		self.height = 1.9
		self.width  = 10
		self.length = 180
		self.cost   = 1.33
		
	def getArea(self):
		plankArea = (self.height*self.width*self.length)
		return plankArea
		
	def getCostPerCm3(self):
		plankArea = self.getArea()
		plankCostPerCm3 = self.cost/plankArea
		
		return plankCostPerCm3
