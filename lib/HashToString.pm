package HashToString;
use common::sense;
use JSON::XS;
use Exporter qw(import);

our @EXPORT_OK = qw(hashToString);

sub hashToString {
    my $hash_ref = shift;
    return encode_json $hash_ref;
}

1;
