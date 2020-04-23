#with open('./mix.log') as file:
#        file_contents = file.read()
#        print(file_contents)
# Using readlines() 
import re
output_file= input ("Enter file to parse:")
file1 = open(output_file, 'r') 
Lines = file1.readlines() 
  
count = 0
print("READ aggrb")
print("WRITE aggrb")
# Strips the newline character 
for line in Lines: 
    a = line.find("READ")
    b = -1
    if a != b:
        string=line.strip();
        print(string[24:36])

    a = line.find("WRITE")
    b = -1
    if a != b:
        string=line.strip();
        print(string[25:36])

print("99.99th")
for line in Lines: 
    a = line.find("99.99th")
    b = -1
    if a != b:
        #print(line)
        m=re.search("\W*99.99th=\[*(\s*\d+)", line)
        #print(m)
        print(m.group(1))
print("90.00th")
for line in Lines: 
    a = line.find("70.00th")
    b = -1
    if a != b:
        m=re.search("\w*90.00th=\[*(\s*\d+)", line)
        print(m.group(1))

print("95.00th")
for line in Lines: 
    a = line.find("95.00th")
    b = -1
    if a != b:
        m=re.search("\W*95.00th=\[*(\s*\d+)", line)
        print(m.group(1))

print("clat avg")
for line in Lines: 
    a = line.find("clat")
    b = -1
    if a != b:
        a = line.find("clat percentiles")
        if a == b:

        #print(line)
            m=re.search("\W*avg=\[*(\s*\d+)", line)
            print(m.group(1))

#



#print("clat (msec) avg")
#for line in Lines: 
#    a = line.find("clat (msec):")
#    b = -1
#    if a != b:
#        string=line.strip();
#        print(string[30:42])

#print("[90.00th]")
#for line in Lines: 
#    a = line.find("90.00th=[ ")
#    b = -1
#    if a != b:
#        string=line.strip();
#        print(string[44:52])
#
#print("[95.00th]")
#for line in Lines: 
#    a = line.find("95.00th=[ ")
#    b = -1
#    if a != b:
#        string=line.strip();
#        print(string[61:69])


#print("[99.99th]")
#for line in Lines: 
#    a = line.find("99.99th=[")
#    b = -1
#    if a != b:
#        string=line.strip();
#        print(string[30:42])
