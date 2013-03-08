# Test
# Euler Problem 1

def sum_multiples3_5 n
  sumcount = 0
  i = 1
  while  i < n 
    sumcount += i if i%3 == 0 || i%5 == 0
    i += 1
  end
  puts sumcount 
end

sum_multiples3_5 1000




# Euler Problem 2

def sum_fiboeven n
  sumcount = 0
  previous_num = 1
  i = 1
  while i < n 
    sumcount += i if i%2 == 0  
    i += previous_num
    previous_num = i - previous_num
  end 
  puts sumcount
end

sum_fiboeven 4000000




# Euler Problem 3

require 'prime'

def largest_primefactor n
  primes = Array.new
  allprimes = Prime.instance
  allprimes.each do |i|
    primes << i if n%i == 0 && i < n
  end
  puts primes.max
end

largest_primefactor 600851475143


require 'prime'

def largest_primefactor n
  i = 1
  primes = Array.new
  while i < n
    if Prime.prime?(i) == true
      primes << i if n%i == 0
    end
    i += 1
  end
  puts primes.max
end

largest_primefactor 600851475143



require 'prime'

def largest_primefactor n
  primes = Array.new
  allprimes = Prime.instance
  relevantprimes = allprimes.select do |i|
    i < n
  end
  relevantprimes.each do |i|
  primes << i if n%i == 0
  end
  puts primes.max
end

largest_primefactor 600851475143














