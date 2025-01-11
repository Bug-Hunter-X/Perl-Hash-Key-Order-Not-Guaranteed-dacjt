use strict;
use warnings;

# Solution 1: Using an array of hash references
my @array_of_hashes = (
    { key => 'a', value => 1 },
    { key => 'b', value => 2 },
    { key => 'c', value => 3 },
);

for my $hash_ref (@array_of_hashes) {
    print "Key: $hash_ref->{key}, Value: $hash_ref->{value}\n";
}

# Solution 2: Using a hash and explicitly tracking insertion order
my %hash = ();
my @keys = ();

%hash = ( a => 1, b => 2, c => 3 );
@keys = qw(a b c);

for my $key (@keys) {
    print "Key: $key, Value: $hash{$key}\n";
}

# Solution 3: Using Tie::IxHash (requires installing Tie::IxHash module)
use Tie::IxHash;

tie my %tied_hash, 'Tie::IxHash';
%tied_hash = (a => 1, b => 2, c => 3);

foreach my $key (keys %tied_hash) {
    print "Key: $key, Value: $tied_hash{$key}\n";
}