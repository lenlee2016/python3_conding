#!/usr/bin/env python3
signals= {'green':'go','yellow':'go faster','red':'smile for the camera'}
print(list(signals.keys()))
print(list(signals.values()))
print(list(signals.items()))
empty_set=set()
print(empty_set)
even_numbers={0,2,4,6,8.0,10,12.0}
odd_numbers={1,3,5.0,7.0,9.0,11,13.0}
print(even_numbers)
print(odd_numbers)
print(set('letters'))
""" Start the in function in the dictionary data"""
drinks= {
    'martini':{'vodka','vermouth'},
    'black russian':{'vodka','kahlua'},
    'white russian':{'cream','kahlua','vodka'},
    'manhattan':{'rye','vermouth','bitters'},
    'screwdriver':{'orange juice','vodka'}
}
for name,contents in drinks.items():
    if 'vodka' in contents:
        print(name)