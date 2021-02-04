class Plank():
	def __init__(self, settings):
		self.height = settings["plank"]["height"]
		self.width  = settings["plank"]["width"]
		self.length = settings["plank"]["length"]
		self.cost   = settings["plank"]["cost"]
		
	def getArea(self):
		plankArea = (self.height*self.width*self.length)
		return plankArea
		
	def getCostPerCm3(self):
		plankArea = self.getArea()
		plankCostPerCm3 = self.cost/plankArea
		
		return plankCostPerCm3
