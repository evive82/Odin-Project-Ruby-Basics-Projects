def bubble_sort array
  sorted = array
  still_sorting = false
  sorted.each_with_index do |n, i|
    if i < sorted.length - 1 && n > sorted[i + 1]
      sorted[i], sorted[i + 1] = sorted[i + 1], sorted[i]
      still_sorting = true
    end
  end
  if still_sorting
    bubble_sort(sorted)
  else
    sorted
  end
end

puts bubble_sort([4,3,78,2,0,2])
