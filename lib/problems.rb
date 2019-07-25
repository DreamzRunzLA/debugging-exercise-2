# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "byebug"


def largest_prime_factor(num)
    reversed = (2..num).to_a.reverse

    reversed.each do |ele|
        if num % ele == 0 && prime?(ele)
            return ele
        else
            next
        end
    end

end

def prime?(num)
    if num < 2
        return false
    end

    (2...num).each do |number|
        if num % number == 0
            return false
        end
    end

    return true
end



def unique_chars?(string)
    nums = Hash.new(0)

    string.each_char do |char|
        nums[char] += 1
    end

    nums.values.each do |number|
        if number > 1
            return false
        end
    end

    return true
end


def dupe_indices(array)
    answer = Hash.new {|k,v| k[v] = []}

    array.each_with_index do |ele, i|
        answer[ele] << i
    end

    answer.keys.each do |key|
        if answer[key].length < 2
            answer.delete(key)
        end
    end

    return answer


end


def ana_array(array1, array2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)

    array1.each do |ele|
        hash1[ele] += 1
    end

    array2.each do |ele|
        hash2[ele] += 1
    end

    return hash1 == hash2
end

