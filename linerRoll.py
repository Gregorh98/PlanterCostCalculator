class Liner():
	def __init__(self, settings):
		self.width  = settings["liner"]["width"]
		self.length = settings["liner"]["length"]
		self.cost   = settings["liner"]["cost"]

	def getCostPerCm2(self):
		rollArea = (self.width*self.length)
		linerCostPerCm2 = self.cost/rollArea
		
		return linerCostPerCm2
