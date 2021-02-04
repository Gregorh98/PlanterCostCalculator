from reportlab.pdfgen import canvas
 
class PDF():
	def __init__(self, name, length, width, height, price, soil):
		import os
		if os.path.isdir("receipts") == False:
			os.mkdir("receipts")
			
		pdf_file = ('receipts/%s.pdf' % (name))

		can = canvas.Canvas(pdf_file)
		
		self.name 		= name
		self.length		= length
		self.width		= width
		self.height		= height
		self.price		= price
		self.soil		= soil
		
		can.drawString(440, 760, "Ewan Hastings")
		can.drawString(440, 740, "38 Moat View")
		can.drawString(440, 720, "Roslin, EH25 9NZ")
		can.drawString(440, 700, "ewanh@gmx.com")
		can.drawString(440, 680, "0131 440 4908")
		
		can.setFont("Helvetica", 64)
		can.drawString(75, 700, "Receipt")
		
		can.setFont("Helvetica", 12)
		can.drawString(75, 620, "Customer Name")
		can.drawString(300, 620, self.name)
		
		can.drawString(75, 580, "Ordered Part")
		can.drawString(300, 580, "Pressure Treated Wooden Planter Trough")
		
		can.drawString(75, 540, "Dimensions")
		can.drawString(300, 540, ("Length: %scm" % (self.length)))
		can.drawString(300, 520, ("Width: %scm" % (self.width)))
		can.drawString(300, 500, ("Height: %scm" % (self.height)))
		
		can.setFont("Helvetica-Bold", 12)
		can.drawString(75, 460, "Price")
		can.drawString(300, 460, ("£%s" % (self.price)))
		can.setFont("Helvetica", 12)
		
		can.drawString(75, 380, ("Soil needed to fill = %s Litres" % (self.soil)))
		
		can.drawString(75, 400, "We hope you enjoy your new planter!")
		
		can.showPage()

		can.save()

