package Dancer::Plugin::Crowdtilt::OAuth;
use Dancer ':syntax';
use Dancer::Plugin;
use Dancer::Plugin::Facebook;

#hook fb_access_token_available => sub {
#};

setup_fb '/auth/facebook';

true;
