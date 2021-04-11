# Если "orange" и :orange считаетсся одним элементом, то ответ ниже:
arr = [ nil, 2, :foo, "bar", "foo", "apple", "orange", :orange, 45, nil, :foo, :bar, 25, 45, :apple, "bar", nil]

hash = arr.reduce(Hash.new(0)) do |hash, key|
    key = key.to_sym if key.is_a?(String)
    hash[key] += 1
    hash
end

puts hash
