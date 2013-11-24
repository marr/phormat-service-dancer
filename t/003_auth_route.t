#!/usr/bin/perl

use Test::More tests => 3;
use MyApp::Web;
use Dancer::Test;
use Dancer qw{:tests};

set errors => 1;
set logger => "file";
set warnings => 1;
debug "Testing auth case";

route_exists [GET => '/auth'], 'a route handler is defined for /auth'; 

my $response = dancer_response GET => '/auth/facebook';
#debug "Response is ", to_dumper $response;
is $response->status, 303, "GET /auth/facebook was redirected";
like $response->header ('Location'), qr,^https://graph.facebook.com,, "GET /auth/facebook was redirected to facebook";

done_testing;
