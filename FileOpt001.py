#!/usr/bin/env python3
man         = []
other       = []
try:
    data    = open('example01.list')
    for each_line in data:
        # # print(each_line,'\n')
        try:
            (role,line_spoken)     = each_line.split('02# 1',1)
            line_spoken            = line_spoken.strip()
            if   role == '|  SUB INFO  ':
                man.append(line_spoken)
            elif role == 'LIS':
                other.append(line_spoken)
        except ValueError:
                pass
    data.close()
except IOError:
    print ('The datafile is missing!')
try:
    with open('man_data.txt','w') as man_file:
        print (man,file=man_file)
    with open('other_data.txt','w') as other_file:
        print (other,file=other_file)
except IOError as err:
    print('File error:'+str(err))
    
