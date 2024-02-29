#Input: arr[]={“22/4/1233”, “1/3/633”, “23/5/56645”, “4/12/233”}, Q = 2,
#Query[] = {“23/3/4345”, “12/3/2”}


def parse_date(date_str)
  day, month, year = date_str.split("/").map(&:to_i)
  [day,month, year]
end

def capare_dates(date1, date2)
  return date1[2] <=> date2[2] if date1[2] != date2[2]  #[] é o elemento do array aqui é o ano
  return date1[1] <=> date1[1] if date1[1] != date2[1] #[] aqui o mes
  date1[0] <=> date2[0]                                 #[]dia
end

def binary_search(arr, target_date)
  
end
