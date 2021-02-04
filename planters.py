import planks, linerRoll
import json, math
class Planter():
	def __init__(self, dimensions, settings):
		self.height, self.width, self.length = dimensions
		self.settings = settings
		self.markup = self.settings["general"]["markup"]
		self.measurementType = self.settings["general"]["defaultUnitOfMeasurement"]
		
		self.plank = planks.Plank(self.settings)
		
		if self.length >= 90:
			self.numberOfSupportPlanks = 6
		else:
			self.numberOfSupportPlanks = 4

	def getAreaInside(self):
		areaOfAirFloor = (self.width-(self.plank.height*2))*(self.length-(self.plank.height*2))
		innerArea = areaOfAirFloor * self.height
		
		return innerArea
		
	def getAreaOutside(self):
		innerArea = self.getAreaInside()
		totalArea = (self.width * self.length) * self.height
		outsideArea = totalArea - innerArea
	
		return outsideArea

	def calcScrewCost(self):
		screwsPerPlanter = 50
		screwsPerBox     = 200
		costPerBox       = 4
		
		costPerPlanter = ((costPerBox/screwsPerBox)*screwsPerPlanter)

		return (costPerPlanter)
	
	def calcWoodCostArea(self):
		totalArea = self.getAreaOutside()
		costPerArea = totalArea*self.plank.getCostPerCm3()

		return costPerArea

	def calcWoodCostPlanks(self):
		woodCost = self.calcWoodNeeded() * self.plank.cost
		
		return woodCost

	def calcLinerCost(self):
		#calculate areas of all box faces and ground
		#Multiply the sum of these by liner cost per cm2
		self.liner = linerRoll.Liner(self.settings)

		longSideAreas = 2*((self.length*self.height) - (2*self.plank.height))
		shortSideAreas = 2*((self.width*self.height) - (2*self.plank.height))
		baseArea = ((self.length*self.width)-(4*self.plank.width))
		totalAreaToCover = longSideAreas+shortSideAreas+baseArea
		
		totalLinerCost = self.liner.getCostPerCm2()*totalAreaToCover

		return totalLinerCost

	def calcTotalCost(self):
		total = self.calcScrewCost() + self.calcWoodCostPlanks() + self.calcLinerCost()
		
		return total
		
	def calcWoodNeeded(self):
		planterArea		= self.getAreaOutside()
		plankArea		= self.plank.getArea()
		
		supportPlanks	= ((self.plank.height*self.plank.width*self.height)*self.numberOfSupportPlanks)
		
		woodNeeded = math.ceil((planterArea+supportPlanks)/plankArea)

		return woodNeeded
		
	def calcPlanksNeeded(self):
		planksNeededForSections	= int((2*(self.height/self.plank.width)))
		lengthPlankDimensions	= (str(self.length)+ "x" + str(self.plank.width))
		widthPlankDimensions	= (str(self.width) + "x" + str(self.plank.width))
		supportPlankDimensions 	= (str(self.height) + "x" + str(self.plank.width))
		
		planksNeeded = [["Length", lengthPlankDimensions, planksNeededForSections], ["Width", widthPlankDimensions, planksNeededForSections], ["Supports", supportPlankDimensions, self.numberOfSupportPlanks]]
		return planksNeeded
		
		print("Length:	%s = %s" % (lengthPlankDimensions, planksNeeded))
		print("Width:	%s = %s" % (widthPlankDimensions, planksNeeded))
		print("Supports: %s = %s" % (supportPlankDimensions, self.numberOfSupportPlanks))
		
	def calcSoilNeeded(self):
		innerVolume = self.getAreaInside()
		soilLitresNeeded = math.ceil(innerVolume/1000)
		return soilLitresNeeded
		
