#!/usr/bin/perl -w
use strict;
use warnings;
use Excel::Writer::XLSX;

my $workbook = Excel::Writer::XLSX->new( 'Math002a.xlsx' );
my $format = $workbook->add_format();
        $format->set_align('left' );
		  $format->set_size(16);

my $worksheet1 = $workbook->add_worksheet( 'Math_001' );

# set Columns width to different to fit the values.
    $worksheet1->set_column(  'A:E',  15.2 );
	 $worksheet1->set_default_row( 24 );
	  &Deploy($worksheet1);
		  
my $worksheet2 = $workbook->add_worksheet( 'Math_002' );

# set Columns width to different to fit the values.
    $worksheet2->set_column(  'A:E',  15.2 );
	 $worksheet2->set_default_row( 24 );
	  &Deploy($worksheet2);

my $worksheet3 = $workbook->add_worksheet( 'Math_003' );

# set Columns width to different to fit the values.
    $worksheet3->set_column(  'A:E',  15.2 );
	 $worksheet3->set_default_row( 24 );
	  &Deploy($worksheet3);
	  
my $worksheet4 = $workbook->add_worksheet( 'Math_004' );

# set Columns width to different to fit the values.
    $worksheet4->set_column(  'A:E',  15.2 );
	 $worksheet4->set_default_row( 24 );
	  &Deploy($worksheet4);

my $worksheet5 = $workbook->add_worksheet( 'Math_005' );

# set Columns width to different to fit the values.
    $worksheet5->set_column(  'A:E',  15.2 );
	 $worksheet5->set_default_row( 24 );
	  &Deploy($worksheet5);
	  
sub Deploy()
{
	  my $sheet = shift;
		for my $i ( 1 .. 10 ) {
			 for my $j ( 0 .. 4 ) {
				  $sheet->write( $i, $j, &EquationBuilt(50), $format );
			 }
		}
		
		for my $i ( 15 .. 24 ) {
			 for my $j ( 0 .. 4 ) {
				  $sheet->write( $i, $j, &EquationBuilt(50), $format );
			 }
		}
}

sub EquationBuilt()
{
my $range = shift;
my $NUM_a = int(rand($range));
my $NUM_b = int(rand($range));
my $equation;
if($NUM_a == $NUM_b) {$NUM_b = int(rand(10*$range)/10)};
if($NUM_a ==0){$NUM_a=1+int(rand($range - 21))}
if($NUM_b ==0){$NUM_b=1+int(rand(19))}

#print $NUM_a," "x5,$NUM_b," "x5;
	if(($NUM_a + $NUM_b)<=$range){
		$equation=$NUM_a." + ".$NUM_b." =  ";
	}
	if((($NUM_a + $NUM_b)  >$range) && ($NUM_a >= $NUM_b)){
		$equation=$NUM_a." - ".$NUM_b." =  ";
	}
	if((($NUM_a + $NUM_b)  >$range) && ($NUM_a < $NUM_b)){
		$equation=$NUM_b." - ".$NUM_a." =  ";
	}
	return $equation;
}
