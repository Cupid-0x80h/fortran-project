set title "Frequency Distribution"
set xlabel "X"
set ylabel "Frequency"
set style data histograms
set style fill solid 1.0
set boxwidth 0.5
plot "data.dat" using 2:xtic(1) title "Freq" lc rgb "blue"

