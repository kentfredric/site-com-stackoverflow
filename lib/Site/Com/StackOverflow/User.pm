package Site::Com::StackOverflow::User;

use Moose 0.64;
use MooseX::Method::Signatures 0.06;
use version;
our $VERSION = qv('0.1');
use Site::Com::StackOverflow;

extends 'Site::Com::StackOverflow';

has 'userid' => (
    required => 1,
    isa      => 'Int',
    is       => 'rw',
);

method answers( Int :$limit? where { $_ > 0 } ) {
    if ( $limit ){
        $self->throw_error( "Limit Not Implemented" );
    }
    my $rep = $self->ns('User::Reputation')->( userid => $self->userid );
    return $rep->uri( '2008-01-06', '2008-01-07' );
};

method uri {
    return SUPER::uri($self) . '/users/' . $self->userid;
};

1;

