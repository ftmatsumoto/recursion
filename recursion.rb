def fibs(n)
	curr, last = 0, 1
	if n == 0 then curr
	elsif n == 1 then last
	elsif n > 1
		n.times do
			curr, last = last, curr + last
		end
		curr
	end
end

def fibs_rec(n)
	if n == 0 then 0
	elsif n == 1 then 1
	elsif n > 1 then fibs_rec(n - 1) + fibs_rec(n - 2)
	end
end

def merge_sort(ary)
	
end

puts fibs(20)
puts fibs_rec(20)