package Site::Com::StackOverflow::User::Reputation;
use Moose;
use version;
our $VERSION=qv('0.1');

extends qw( Site::Com::StackOverflow::User );

method uri ( DateTime :$from! , DateTime :$to! ){
    return SUPER::uri($self) . '/' . $from . '/' . $to ;
}


1;

