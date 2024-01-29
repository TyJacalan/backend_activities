#We have given you an array and a number. Write a program that checks to see if the number appears in the array.

def check_number(arr, number)
    arr.include?(number)
end
  
arr = [1, 3, 5, 7, 9, 11]
number = 3
  
puts check_number(arr, number)