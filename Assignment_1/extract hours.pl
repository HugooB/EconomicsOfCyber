use strict;
use warnings;
use diagnostics;

my %h;

print "hoi";
#open(FH, "<d:\\tmp\\cbl2.csv")  || die;
open(FH, "<D:\\Education\\\TU Delft 2016-2017 MoT plus Leiden Univ\\Q1 WM0824TU Economics of Cyber Security\\SPAM assignment data files from Feyzullah Cetin 2016-09-16\\cbl.diagnosis-parsed-18092015.csv")  || die;
#my @a = ();
#while(my $line=<FH>)
foreach my $line (<FH>)
{
#  $line =~ s/\n|\r//gi;
  if ( $line !~ m/^\d+$/ )
  {
    # $line =~ s/\n|\r//gi;
    #  print $line;
      my @a = split(/\,/, $line);
    #  print "a6";
    #   print $a[6]."\n";
       my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime($a[6]);
#       print $hour."\n";
#       if(!defined($h{$hour})){ $h{$hour} = 0;}
       $h{$hour}++;
  }
}

#print "2";

foreach my $key (sort keys %h){
        print "$key: ".$h{$key}."\n";
}
