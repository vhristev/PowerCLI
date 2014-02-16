#!/usr/bin/perl -w 
use IO::Socket;

#Setction 2

$query = '/search?hl=en&q=dog';
$server = 'www.google.com';
$port = 80;

sub socketInit()
{
	$socket = IO::Socket::INET->new(
	Proto => 'tcp',
	PeerAddr => $server,
	PeerPort => $port,
	Timeouy => 5,
	);

	unless($socket)
{
die("Could not connect to $server:$port");
}

$socket->autoflush(1);
}
