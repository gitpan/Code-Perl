# $Header: /home/fergal/my/cvs/Code-Perl/Makefile.PL,v 1.4 2003/06/18 01:50:40 fergal Exp $

use strict;

use ExtUtils::MakeMaker;

my $module = "Code::Perl";
my $file_base = $module;
$file_base =~ s/::/\//g;
$file_base = "./lib/$file_base";
my $file = "$file_base.pm";
my $pod_file = "$file_base.pod";
(my $dir = $module) =~ s/::/-/g;

WriteMakefile(
	AUTHOR => 'Fergal Daly <fergal@esatclear.ie>',
	NAME => $module,
	VERSION_FROM => $file,
	INSTALLDIRS => 'perl',
	PREREQ_PM => {
		'Class::MethodMaker' => 0,
		'Test::Deep' => '0.04'
	},
	PREREQ_FATAL => 0,
	dist => {
		PREOP=> "rm -f README; pod2text -80 < $pod_file > README; cp -f README $dir-\$(VERSION); "
	}
);
