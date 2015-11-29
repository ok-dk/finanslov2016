 #!/usr/bin/perl
 use warnings;

 open FILE, "fl16.csv" or die $!; #input er csv-filen eksporteret fra http://www.oes-cs.dk/olapdatabase/finanslov/index.cgi (vælg struktur og medtag alle niveauer, download derefter csv-fil øverst

 while (my $line = <FILE>) {
   my @parts = split(/;/, $line);
   if ($parts[0] =~ /^\"(\d+)/)
   {
     my $nr = $1;
     if ($nr =~ /^(\d\d)/) #det følgende kunne nok gøres smartere end et regex for hvert niveau...nogle bud?
     {
       print $1;
     }
     print ";";

     if ($nr =~ /^\d\d(\d)/)
     {
       print $1;
     }
     print ";";

     if ($nr =~ /^\d\d\d(\d)/)
     {
       print $1;
     }
     print ";";

     if ($nr =~ /^\d\d\d\d(\d\d)/)
     {
       print $1;
     }
     print ";";

     if ($nr =~ /^\d\d\d\d\d\d(\d\d)/)
     {
       print $1;
     }
     print ";";

     print $line."";
   }
   else
   {
 #    print $line."\n";
   }


 }

 #print "end\n";
