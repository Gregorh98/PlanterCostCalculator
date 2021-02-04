class Liner():
	def __init__(self):
		self.width  = 135
		self.length = 4500
		self.cost   = 16

	def getCostPerCm2(self):
		rollArea = (self.width*self.length)
		linerCostPerCm2 = self.cost/rollArea
		
		return linerCostPerCm2
