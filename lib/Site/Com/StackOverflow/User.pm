package Site::Com::StackOverflow::User;

use MooseX::Declare 0.03;

use version;
our $VERSION = qv('0.1');

class Site::Com::StackOverflow::User extends Site::Com::StackOverflow {

    has 'userid' => (
        required => 1,
        isa      => 'Int',
        is       => 'rw',
    );

    method answers( Int :$limit? where { $_ > 0 } ) {
        if ($limit)
        {
            $self->throw_error("Limit Not Implemented");
        }
        my $rep = $self->ns('User::Reputation')->( userid => $self->userid );
        return $rep->uri( '2008-01-06', '2008-01-07' );
    };

    override uri {
        return super() . '/users/' . $self->userid;
    };

};
1;

