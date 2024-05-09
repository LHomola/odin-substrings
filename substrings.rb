def substrings(input, dict)
    input = input.downcase
    input_len = input.length
    result = Hash.new(0)
    
    for i in (0...input_len) do
        for j in (i...input_len) do
            substring = input[i..j]
            if dict.include?(substring)
                result[substring] += 1
            end
        end
    end

    p result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#substrings("sitbelowsit", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)