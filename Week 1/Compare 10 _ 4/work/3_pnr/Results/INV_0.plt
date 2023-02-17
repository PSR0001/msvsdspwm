#Use this file as a script for gnuplot
#(See http://www.gnuplot.info/ for details)

set title" #Blocks= 2, #Terminals= 4, #Nets= 4,Area=1.56038e+08, HPWL= 38720 "

set nokey
#   Uncomment these two lines starting with "set"
#   to save an EPS file for inclusion into a latex document
# set terminal postscript eps color solid 20
# set output "result.eps"

#   Uncomment these two lines starting with "set"
#   to save a PS file for printing
# set terminal postscript portrait color solid 20
# set output "result.ps"


set xrange [-50:10370]

set yrange [-50:15170]

set label "X_XM3" at 7740 , 7560 center 

set label "D" at 6880 , 840


set label "G" at 6880 , 9240


set label "S" at 8600 , 7560


set label "X_XM2" at 2580 , 7560 center 

set label "D" at 3440 , 840


set label "G" at 3440 , 9240


set label "S" at 1720 , 7560


set label "VOUT" at 6880 , 0 center                

set label "VIN" at 10320 , 9240 center                

set label "VSS" at 10320 , 7560 center                

set label "VDD" at 0 , 7560 center                

plot[:][:] '-' with lines linestyle 3, '-' with lines linestyle 7, '-' with lines linestyle 1, '-' with lines linestyle 0

# block X_XM3 select 0 bsize 4
	5160	0
	5160	15120
	10320	15120
	10320	0
	5160	0

# block X_XM2 select 0 bsize 4
	0	0
	0	15120
	5160	15120
	5160	0
	0	0


EOF
	5680	560
	5680	1120
	8080	1120
	8080	560
	5680	560

	5680	8960
	5680	9520
	8080	9520
	8080	8960
	5680	8960

	8320	1360
	8320	13760
	8880	13760
	8880	1360
	8320	1360

	4640	560
	4640	1120
	2240	1120
	2240	560
	4640	560

	4640	8960
	4640	9520
	2240	9520
	2240	8960
	4640	8960

	2000	1360
	2000	13760
	1440	13760
	1440	1360
	2000	1360


EOF

	6880	0
	6880	0
	6880	0
	6880	0
	6880	0

	10320	9240
	10320	9240
	10320	9240
	10320	9240
	10320	9240

	10320	7560
	10320	7560
	10320	7560
	10320	7560
	10320	7560

	0	7560
	0	7560
	0	7560
	0	7560
	0	7560

EOF

#Net: VOUT
	6880	840
	3440	840
	6880	840

	6880	840
	6880	0
	6880	840


#Net: VIN
	6880	9240
	3440	9240
	6880	9240

	6880	9240
	10320	9240
	6880	9240


#Net: VSS
	8600	7560
	10320	7560
	8600	7560


#Net: VDD
	1720	7560
	0	7560
	1720	7560


EOF

pause -1 'Press any key'