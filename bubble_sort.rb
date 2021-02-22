def bubble_sort(array)
  sorted = false

  until sorted
    sorted = true
    for i in 0...(array.length - 1)
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        sorted = false
      end
    end
  end

  array
end

p bubble_sort([1, 3, 12, 105, 4, -5, 2, -26, 6, 2, 4])