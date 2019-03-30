#!/usr/bin/python
import os
import random
import time
import sys
import select

default_load = 60
begin_hour = 10
end_hour = 21

def secondes_2_end_of_day():
	l = time.localtime()
	t = time.struct_time((l.tm_year, l.tm_mon, l.tm_mday, 23, 59, 59, l.tm_wday, l.tm_yday, l.tm_isdst))
	return time.mktime(t) - time.mktime(l)

def get_rand_parameter(num):
	#calculate time delta
	l = time.localtime()
	t = time.struct_time((l.tm_year, l.tm_mon, l.tm_mday, end_hour, 00, 00, l.tm_wday, l.tm_yday, l.tm_isdst))
	delta = time.mktime(t) - time.mktime(l)
	avg_delta = delta / num
	return (int(avg_delta * 0.5), int(avg_delta * 1.5))

def main():
	remain = int(sys.argv[2])
	serial=sys.argv[1]
	random.seed(os.urandom(64))
	while True:
		rand_l, rand_h = get_rand_parameter(remain)
		s = random.randrange(rand_l, rand_h)
		print "Press ENTER key to cancel next test in {} seconds!".format(s)
		try:
			i, o, e = select.select([sys.stdin], [], [], s)
			if i:
				raw_input()
				break
			print "[{}]Running test now!".format(time.localtime())
			r = os.system("adb -s {} shell am instrument -w -r   -e debug false -e class 'com.example.myfirstapp.ExampleInstrumentedTest' com.example.myfirstapp.test/androidx.test.runner.AndroidJUnitRunner".format(serial))
			remain -= 1
			print "[{}]{} test case remained!".format(time.localtime(), remain)
			if remain == 0:
				print "[{}]Sleep till {}AM of tomorrow!".format(time.localtime(), begin_hour)
				time.sleep(secondes_2_end_of_day() + begin_hour*60*60)
				remain = default_load
				rand_l, rand_h = get_rand_parameter(remain)
		except:
			break
	print "----------------> {} test case remained!".format(remain)

main()
