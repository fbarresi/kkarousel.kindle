import sys
import filecmp

equal = filecmp.cmp('cover.png','cover.temp.png')

if equal:
	sys.exit(-1)
sys.exit(0)