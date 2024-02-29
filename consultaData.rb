#Input: arr[]={“22/4/1233”, “1/3/633”, “23/5/56645”, “4/12/233”}, Q = 2,
#Query[] = {“23/3/4345”, “12/3/2”}


def parse_date(date_str)
  day, month, year = date_str.split("/").map(&:to_i)
  [day,month, year]
end

def compare_dates(date1, date2)
  return date1[2] <=> date2[2] if date1[2] != date2[2]  #[] é o elemento do array aqui é o ano
  return date1[1] <=> date1[1] if date1[1] != date2[1] #[] aqui o mes
  date1[0] <=> date2[0]                                 #[]dia
end

def binary_search(arr, target_date)
  mid = (low +  high) / 2
  comparison_result = compare_dates(parse_date(arr[mid]), target_date)
  if comparison_result == 0
    return mid
    elsif comparison_result < 0
      low = mid + 1
    else
      high = mid - 1
    end
end

return low
end

def closest_date(arr, query_date)
  target_date = parse_date(query_date)
  index = binary_search(arr, target_date)

  if index == arr.length
    return -1
  else
    return arr[index]
  end
end

