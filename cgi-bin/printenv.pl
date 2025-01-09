print "Content-type: text/ascii\n\n";

foreach $key (sort keys(%ENV)) {
  print "$key = $ENV{$key}\n";
}
