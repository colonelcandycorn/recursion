def merge_sort(array)
  array_final = []

  return array if array.length == 1

  array_one = merge_recursive(array[0...array.length/2])
  array_two = merge_recursive(array[array.length/2..])
  array_one.length.times do |index|
    if array_two.empty?
      array_final.push array_one[index] 
      next
    end

    if array_one[index] > array_two[0]
      array_final.push array_two.shift 
      redo unless array_two.empty?
    end

    array_final.push array_one[index]
    next
  end
  array_two.each { |two| array_final.push two }
  array_final
end
