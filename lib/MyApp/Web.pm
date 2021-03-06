package MyApp::Web;
use Dancer ':syntax';
use Dancer::Plugin::Auth::Extensible;

our $VERSION = '0.1';

get '/' => sub {
    return template 'index';
};

get '/auth' => sub {
    return template 'auth';
};

true;
