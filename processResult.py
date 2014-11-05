import sys

if __name__ == "__main__":
	file_name = sys.argv [1]
	file = open (file_name, "r")
	lines = file.readlines ()
	
	#7 number_of_user: 2, 5, 10, 20, 30, 40, 50
	#each record contain: type speed and delay
	records = [[list() for x in xrange(2)] for x in xrange(50)] 
	
	test_cases = [[0 for x in xrange(4)] for x in xrange (100)]
	for line in lines:
		if ('---' in line):
			test_cases = [[0 for x in xrange(4)] for x in xrange (100)]
			continue
		ls = line.split ()
		#found writing record
		if (len (ls) == 4):
			id = int (ls [0]) - 1
			users = int (ls [1])
			type_spd = float (1000 / users / 4 / float (ls[2]))
			write_time = int (ls[3])
			test_cases[id][0] = users
			test_cases[id][1] = type_spd
			test_cases[id][2] = write_time
		#found reading record
		if (len (ls) == 2):
			id = int (ls[0]) - 1
			test_cases [id][3] = int (ls[1])
			#write to records
			res = list ()
			res.append (test_cases [id][1])
			res.append (test_cases [id][3] - test_cases [id][2])
			records [test_cases[id][0]].append (res)
	#test
	print 'TEST'
	for i in range (len (records [2])):
		print records[2][i]
	file.close ()
