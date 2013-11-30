package Dancer::Plugin::Phormat::OAuth;
use Dancer ':syntax';
use Dancer::Plugin;
use Dancer::Plugin::Facebook;

hook fb_access_token_available => sub {
    debug 'gto', session->{auth}->{facebook};
};

setup_fb '/auth/facebook';

true;
