#!/usr/bin/perl

use Test::More;
use MyApp::Web;
use Dancer::Test;
use Dancer qw{:tests};

set errors => 1;
set logger => "file";
set warnings => 1;
debug "Testing facebook plugin";

dancer_response GET => '/auth/facebook';

ok exists session->{auth}{facebook}, 'Facebook access_token exists';

debug "Session is ", to_dumper session;

done_testing;
