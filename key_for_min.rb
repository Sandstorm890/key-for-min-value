# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require "pry"

def key_for_min_value(name_hash)
    if name_hash.length > 0
        lowest_value = name_hash.first[1]
        lowest_name = name_hash.first[0]
        name_hash.each do |name, int|
            if int < lowest_value
                lowest_value = int
                lowest_name = name
            end
        end
        return lowest_name
    else
        nil
    end
end