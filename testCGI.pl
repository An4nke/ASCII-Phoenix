#!/usr/bin/perl

use strict;
use warnings;

use CGI;


## create CGI query object
my $q = CGI->new;


# Process an HTTP request
my @values  = $q->multi_param('form_field');
my $value   = $q->param('param_name');
 
my $fh      = $q->upload('file_field');
 
my $riddle  = $q->cookie('riddle_name');
my %answers = $q->cookie('answers');
 
# Prepare various HTTP responses
print $q->header();
print $q->header('application/json');
 
my $cookie1 = $q->cookie(
    -name  => 'riddle_name',
    -value => "The Sphynx's Question"
);
 
my $cookie2 = $q->cookie(
    -name  => 'answers',
    -value => \%answers
);
 
print $q->header(
    -type    => 'image/gif',
    -expires => '+3d',
    -cookie  => [ $cookie1,$cookie2 ]
);
 
print $q->redirect('http://somewhere.else/in/movie/land');