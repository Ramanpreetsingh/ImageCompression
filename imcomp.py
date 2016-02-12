import Image
foo = Image.open("/home/shivek/Desktop/scenery2.jpg")
foo.save("/home/shivek/Desktop/imcomp/%sresult.jpg"%(str(50)),optimize=True,quality=50)
foo.save("/home/shivek/Desktop/imcomp/%sresult.jpg"%(str(80)),optimize=True,quality=80)
foo.save("/home/shivek/Desktop/imcomp/%sresult.jpg"%(str(85)),optimize=True,quality=85)
foo.save("/home/shivek/Desktop/imcomp/%sresult.jpg"%(str(90)),optimize=True,quality=90)	


