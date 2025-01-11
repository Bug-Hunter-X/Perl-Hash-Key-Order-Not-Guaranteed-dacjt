my %hash = ( a => 1, b => 2, c => 3 );

for my $key (keys %hash) {
    print "Key: $key, Value: $hash{$key}\n";
}

#The issue is that the order of elements in %hash is not guaranteed.
#If you need to preserve the order in which elements were added to the hash,
you should use a different data structure like an array of hash references.