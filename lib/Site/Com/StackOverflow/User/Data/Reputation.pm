package Site::Com::StackOverflow::User::Data::Reputation;

use Moose 0.64;
use MooseX::Storage 0.15;

use version;
our $VERSION = qv('0.1');

with Storage( 'format' => 'JSON' );

has [qw( PostTitle PostUrl )] => ( isa => 'Str', );

has [qw( RepNegative RepPositive )] => ( isa => 'Int', );

1;

