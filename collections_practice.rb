# your code goes here
def begins_with_r(array)
  array.all? { |word|
    word.start_with?("r")
  }
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.detect { |word|
    word.to_s.start_with?('wa')
  }
end

def remove_non_strings(array)
  array.delete_if do |word|
    !word.kind_of?(String)
  end
end

def count_elements(array)
array.group_by(&:itself)
 .map{|k, v| k.merge(count: v.length)}
end

def merge_data(array1, array2)

    i = 0
    x = 0
    first_merge = []
    second_merge = []
    main_merge = []

      while i < array1.length
      first_merge = first_merge.push(array1[i].merge(array2[x].values[i]))
      i+=1
    end
  return first_merge
  end

def find_cool(array)
  #iterate over each element in the array
  #extract the values in each object as valuesArray
  #test the valuesArray if it includes "cool"
  array.select {|x|
    x.values.include?("cool")
  }
end

def organize_schools(schools)
  #iterate over each school in the hashes
  #extract the location of each school
  #sort the hash by value
  newHash = schools.group_by {|school, city| city[:location] }
  newHash.map {|key, value| newHash[key] = value.flatten(1) }
  newHash.map {|key, value| newHash[key] = value.keep_if {|item| item.kind_of?(String)} }
  newHash
end
