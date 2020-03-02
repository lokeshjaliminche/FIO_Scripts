import json

output_file= input ("Enter json file :")
with open(output_file) as f:
  data = json.load(f)

# Output: {'name': 'Bob', 'languages': ['English', 'Fench']}
print(type(data['jobs']))

print('')
print('jobname')
for job in data['jobs']:
    print(job['jobname'])

print('')
print('ioscheduler')
for job in data['jobs']:
    print(job['job options']['ioscheduler'])

print('')
print('rw')
for job in data['jobs']:
    print(job['job options']['rw'])


print('')
print('rw')
for job in data['jobs']:
    print(job['read']['io_bytes'])

print('')
print('bw')
for job in data['jobs']:
    print(job['read']['bw'])

print('')
print('iops')
for job in data['jobs']:
    print(job['read']['iops'])

print('')
print('runtime')
for job in data['jobs']:
    print(job['read']['runtime'])

print('')
print('total_ios')
for job in data['jobs']:
    print(job['read']['total_ios'])

print('')
print('total_ios')
for job in data['jobs']:
    print(job['read']['total_ios'])

