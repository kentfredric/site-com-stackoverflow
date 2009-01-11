package Site::Com::StackOverflow::User::Data::ReputationSet;

use Moose 0.64;
use MooseX::Method::Signature;

use version;
our $VERSION = qv('0.1');
use JSON;

method thaw ( Str $:json! ){

    return from_json( $json ); 
}

1;

