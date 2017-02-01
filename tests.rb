# # task1 number 78
# arr = [23,2,4,77,2,4,7,8,44,90,5,67,1,76,80]
# def find_el(in_arr, el)
# end


# task2, sample 1
def task_two_one(array, el)
  return array.index(el)
end

# task2, sample 2
def task_two_two(array, el)
  i = 0
  array.each do |x|
    if x == el
      return i
    end
    i += 1
  end
  "Nothing find"
end

date1 = Time.now
t = task_two_one((1..1000_000).to_a, 999999)
puts "task 2 sample - 1, executing #{Time.now - date1}, index is #{t}"

date1 = Time.now
t = task_two_two((1..1000_000).to_a, 999999)
puts "executing #{Time.now - date1}, index is #{t}"


# task 3
fbw = "Fizz::Buzz::Wizz"
new_fbw, i = [], 3

fbw.split("::").count.times do
  if new_fbw.empty?
    new_fbw << fbw[0..i]
  else
    i += 6
    new_fbw << fbw[0..i]
  end
end
puts  "task 3: #{new_fbw.reverse!}"
puts "task 4: #{(1..100).inject(0) { |sum, el| sum += el }}"
