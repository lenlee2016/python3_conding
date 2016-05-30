''' Some description about the codes'''

#!/usr/bin/env python3

import time
SIGNALS = {'green':'go', 'yellow':'go faster', 'red':'smile for the camera'}
print(list(SIGNALS.keys()))
print(list(SIGNALS.values()))
print(list(SIGNALS.items()))
EMPTY_SET = set()
print(EMPTY_SET)
EVEN_NUM = {0, 2, 4, 6, 8.0, 10, 12.0}
ODD_NUM = {1, 3, 5.0, 7.0, 9.0, 11, 13.0}
print(EVEN_NUM)
print(ODD_NUM)
print(set('letters'))
###Start the in function in the dictionary data
DRINKS = {
    ' martini': {'vodka', 'vermouth'},
    'black russian':{'vodka', 'kahlua'},
    'white russian':{'cream', 'kahlua', 'vodka'},
    'manhattan':{'rye', 'vermouth', 'bitters'},
    'screwdriver':{'orange juice', 'vodka'}
}
for name, contents in DRINKS.items():
    if 'vodka' in contents:
        print(name)

###import this


NOW = time.time()
print(time.ctime(NOW))
print(time.localtime(NOW))
