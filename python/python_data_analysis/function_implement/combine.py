import math

def combine(n, m):
	result = math.factorial(n) / (math.factorial(m) * math.factorial(n-m))
	return result

def calc_result():
	n = "start"
	result = 1
	while(True):
		cal_type = input("Please confirm the type\n(i) for integer\n(c) for combine\n(q) or ('') for exit\ntype here: ")
		if cal_type == "i":
			n = input("please enter int number: ")
			if n == "":
				break
			result *= int(n)
		elif cal_type == 'c':
			n = input("please enter number n: ")
			if n == "":
				break
			k = input("please enter number k: ")
			if k == "":
				break
			com = combine(int(n),int(k))
			result *= com
		elif cal_type == 'q' or cal_type == '':
			break
		else:
			print("the wrong type, try hard..")
	return result

if __name__ == '__main__':
	res = calc_result()
	print(res)
