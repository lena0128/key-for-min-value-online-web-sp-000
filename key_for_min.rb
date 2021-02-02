# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    puts
    puts "in key_for_min_value with parameter #{name_hash}"
#    puts "about to return nil" if name_hash.empty?
#    return nil if name_hash.empty?

    name_hash.max_by { | item | puts "item=#{item}" }

    max = name_hash.max_by do | k, v |
        puts "k=#{k}  v=#{v}  0 - v = #{0 - v}"
        0 - v
    end
    puts "max=#{max.inspect}, class of value returned by max_by : #{max.class}"

    result = name_hash.max_by {|k, v| 0-v}[0]
    puts "result=#{result.inspect}"
    result
end
