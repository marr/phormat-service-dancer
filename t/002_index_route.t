use Test::More;
use strict;
use warnings;

# the order is important
use MyApp::Web;
use Dancer::Test;

route_exists [GET => '/'], 'a route handler is defined for /';
response_status_isnt [GET => '/'], 404, "response for GET / is not a 404";
response_status_is ['GET' => '/'], 200, 'response for GET / is 200 for /';

done_testing;
