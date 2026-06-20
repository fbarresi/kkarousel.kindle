import filecmp

try:
	print(filecmp.cmp('cover.png','cover.temp.png'))
except:
	print(False)
