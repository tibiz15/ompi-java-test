reset
set terminal x11
#set terminal windows
set key left top Left reverse
set nolabel
set border 3
set lmargin 12
set rmargin 12
set xtics 2
set ytics 10
set title "Time to send 1000 times a buffer of \"int\" values"
set xlabel "Number of processes in MPI_COMM_WORLD"
set ylabel "CPU time in seconds"
set style data linespoints
set xrange [0:16]
plot "java_Linux_10000_intValues.dat",\
"java_Linux_50000_intValues.dat",\
"java_Linux_100000_intValues.dat"
replot
set terminal pdf
set output "linpc1_numProc_java.pdf"
replot
pause 5
