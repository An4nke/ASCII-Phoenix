#!/usr/bin/perl

use warnings;
use strict;

## use packages for PostgreSQL
use DBI;

## variables
my $database = "";
my $dbh = "";
my $sth = "";



## connect to database 
# always set AutoCommit explicitly
$dbh = DBI->connect("dbi:Pg::dbname=$dbname", '', '', {AutoCommit => 0});

## advance use: PostgreSQL type values
use DBD::Pg qw(:pg_types);

$dbh->do('INSERT INTO mytable(a) VALUES (?)');

$sth->execute();