arr = [ nil, 2, :foo, "bar", "foo", "apple", "orange", :orange, 45, nil, :foo, :bar, 25, 45, :apple, "bar", nil]

hash = arr.reduce(Hash.new(0)) do |hash, key|
    hash[key] += 1
    hash
end

puts hash
