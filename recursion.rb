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
	len = ary.length
	return ary if len == 1
	half = (len/2.0).ceil

	a1 = ary.each_slice(half).to_a.first
	a2 = ary.each_slice(half).to_a.last
	b1 = merge_sort(a1)
	b2 = merge_sort(a2)
	merge(b1,b2)
end

def merge(ary1, ary2)
	n = ary1.length + ary2.length
	res_ary = []
	n.times do
		if ary1.empty?
			res_ary << ary2.shift
		elsif ary2.empty?
			res_ary << ary1.shift
		else
			ary1[0] < ary2[0] ? res_ary << ary1.shift : res_ary << ary2.shift
		end
	end
	res_ary
end

print merge_sort([43,2309,439024,2909,40930,9,4242,102,4324,563,6907,82374,87342,0])
#[43,2309,439024,2909,40930,9,4242,102,4324,563,6907,82374,87342,0]
#puts fibs(20)
#puts fibs_rec(20)