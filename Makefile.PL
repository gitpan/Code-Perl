# $Header: /home/fergal/my/cvs/Code-Perl/Makefile.PL,v 1.2 2003/06/17 14:13:52 fergal Exp $

use ExtUtils::MakeMaker;

WriteMakefile(
	AUTHOR => 'Fergal Daly <fergal@esatclear.ie>',
	NAME => 'Code::Perl',
	VERSION_FROM => './lib/Code/Perl.pm',
	INSTALLDIRS => 'perl',
	PREREQ_PM => { 'Class::MethodMaker' => 0 },
	PREREQ_FATAL => 0,
);
