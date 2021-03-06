###  
###  Released under the MIT License (MIT) --- see ../LICENSE
###  Copyright (c) 2014 Ankit Singla, Sangeetha Abdu Jyothi, Chi-Yao Hong, Lucian Popa, P. Brighten Godfrey, Alexandra Kolla
###  

# Note you need gnuplot 4.4 for the pdfcairo terminal.
set terminal pdfcairo font "Gill Sans, 8" linewidth 4 rounded

# Line style for axes
set style line 80 lt rgb "#808080"

# Line style for grid
set style line 81 lt 0  # dashed
set style line 81 lt rgb "#808080"  # grey

set grid back linestyle 81
set border 3 back linestyle 80 # Remove border on top and right.  These
             # borders are useless and make it harder
	                  # to see plotted lines near the border.
			      # Also, put it in grey; no need for so much emphasis on a border.
			      set xtics nomirror
			      set ytics nomirror

#set log x
#set mxtics 10    # Makes logscale look good.

# Line styles: try to pick pleasing colors, rather
# than strictly primary colors or hard-to-see colors
# like gnuplot's default yellow.  Make the lines thick
# so they're easy to see in small plots in papers.
set style line 1 lt rgb "#A00000" lw 2 pt 1
set style line 2 lt rgb "#00A000" lw 1.5 pt 6 ps 0.3
set style line 3 lt rgb "#5060D0" lw 2 pt 2
set style line 4 lt rgb "#F25900" lw 2 pt 9
set style line 5 lt rgb "#996600" lw 2 pt 4

set output "../plots/40size_pl_noratio.pdf"
set xlabel "Network Degree"
set ylabel "Path Length"

set key top right

set xrange [0:35]
#set yrange [1:1.16]

plot "../resultfiles/40sizeBound_allall.txt" using 3:8 title "Observed ASPL" w lp ls 1, \
     "../resultfiles/40sizeBound_allall.txt" using 3:7 title "ASPL lower-bound" w lp ls 2

#     "../ankit_results/bound_test/result_bound_test_inc_sw.txt" using 1:9 every 5::1 title "2 servers / sw" w lp ls 2, \
#     "../ankit_results/bound_test/result_bound_test_inc_sw.txt" using 1:9 every 5::2 title "4 servers / sw" w lp ls 3, \
#     "../ankit_results/bound_test/result_bound_test_inc_sw.txt" using 1:9 every 5::3 title "8 servers / sw" w lp ls 4, \
#     "../ankit_results/bound_test/result_bound_test_inc_sw.txt" using 1:9 every 5::4 title "16 servers / sw" w lp ls 5
