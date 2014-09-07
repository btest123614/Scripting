require 'csv'
data = CSV.read('data.csv')
CSV.foreach('data.csv') do |row|
  puts row.inspect
end
data.delete_at(0)
puts ""

# ////////////////////////////////////////////////////////////

high_score_name=data.max_by{|row| row[1]}  #Returns the object in enum with the maximum value
low_score_name=data.min_by{|row| row[1]}
print "1. The highest score student is "
print high_score_name[0]
puts ""
print "   The lowest score student is "
print low_score_name[0]
puts ""


# /////////////////////////////////////////////////////////

score = Array.new(data.length) 
i=0
while i<data.length 
	score[i] = data[i][1].to_f
	i=i+1
end
print "2. The mean of all student score is "
print score.inject {|sum, el| sum + el}.to_f / score.size
puts ""

# ////////////////////////////////////////////////////////

color  = Array.new(data.length)
j = 0
while j<data.length
	color[j] = data[j][2]
	j = j+1
end

def most_common_color(a)
	a.group_by do |e|
		e
	end.values.max_by(&:size).first
end

def least_common_color(a)
	a.group_by do |e|
		e
	end.values.min_by(&:size).last
end


print "3. The most popular color is "
print most_common_color(color)
puts ""
print "   The least popular color is "
print least_common_color(color)
puts ""

# ////////////////////////////////////////////////////////////////

name = Array.new(data.length)
k = 0 
while k <data.length
	name[k] =data[k][0]
	k = k+1
end

l=0
puts "4. "
while l<data.length
	puts name[l].reverse.split.map(&:capitalize).join(' ').reverse
	l = l+1

end












