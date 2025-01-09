#!/usr/bin/perl -w

use strict;
use DBI;
use DBD::Oracle;

our $dbh;

opensql();
print "Content-type: text/ascii\n\n";
print "Version: ".get_version();
$dbh->disconnect;

sub get_version {
	my $version='';
	my $sql="SELECT 'x' from dual";
	my $sth=$dbh->prepare($sql);
	$sth->execute();
	$sth->bind_columns(undef,\$version);
	$sth->fetch();
	$sth->finish();
	return $version;
}

sub opensql {
	my $dsn    = $ENV{'ORACLE_CONNECTION_STRING'};
	my $dbuser = $ENV{'ORACLE_USER'};
	my $dbpass = $ENV{'ORACLE_PASSWORD'};
	$dbh    = DBI->connect($dsn, $dbuser, $dbpass); 
}
