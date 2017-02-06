# task 1
number = 6
in_arr = [1,4,3,2]

def find_el(in_arr, number)
  i = 0
  y = i + 1
  finish_result = in_arr

  while i < (in_arr.count - 1) do
    middle_result = in_arr[i..y]
    middle = in_arr[i..y].inject(:+)
    if middle >= number and (in_arr[i..y].count >= 2)
      finish_result = middle_result if middle_result.count < finish_result.count
      i += 1
      y = i + 1
    else
      if y == (in_arr.count - 1)
        i += 1
        y = i + 1
      else
        y += 1
      end
    end
  end
  puts "task 1: minimum elements is #{finish_result.count} and it's #{finish_result}"
end

find_el(in_arr, number)


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
puts "task 2 sample - 2, executing #{Time.now - date1}, index is #{t}"


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
