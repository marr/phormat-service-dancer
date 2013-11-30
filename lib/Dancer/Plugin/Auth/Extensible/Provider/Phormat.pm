package Dancer::Plugin::Auth::Extensible::Provider::Phormat;
use Dancer ':syntax';
use Dancer::Plugin::Facebook;
use base "Dancer::Plugin::Auth::Extensible::Provider::Base";

setup_fb '/auth/facebook';

sub authenticate_user {
    my ($self, $username, $password) = @_;
    my $user_details = $self->get_user_details($username) or return;
    return $self->match_password($password, $user_details->{pass});
}

sub get_user_details {
    my ($self, $username) = @_;
    my ($user) = grep {
        $_->{user} eq $username
    } @{ $self->realm_settings->{users} };
    return $user;
}

sub get_user_roles {
    my ($self, $username) = @_;

    my $user_details = $self->get_user_details($username) or return;
    return $user_details->{roles};
}

true;
