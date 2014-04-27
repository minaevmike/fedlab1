set size ratio 1 
set isosample 50,50 
set view map 
unset key 
set grid 
set title "Learning process" font "Helvetica,18\" 
set xrange [-1:12] 
set yrange [-1:12] 
set cntrparam levels discrete 0.4 
splot "blue.txt" using 1:2:3 with points lt rgb "blue" 
pause 0.5 
c1=0.791237
c2=1.93943
sigma=3.60694
unset surface 
set contour 
set multiplot 
splot exp(-(((x-c1)**2 + (y - c2)**2)/(2*sigma**2) )) 
unset contour 
set surface 
splot "blue.txt" using 1:2:3 with points lt rgb"blue"
unset multiplot 
pause 0.5 

c1=3.32747
c2=4.46691
sigma=3.44614
unset surface 
set contour 
set multiplot 
splot exp(-(((x-c1)**2 + (y - c2)**2)/(2*sigma**2) )) 
unset contour 
set surface 
splot "blue.txt" using 1:2:3 with points lt rgb"blue"
unset multiplot 
pause 0.5 

c1=3.00002
c2=4.24942
sigma=3.2153
unset surface 
set contour 
set multiplot 
splot exp(-(((x-c1)**2 + (y - c2)**2)/(2*sigma**2) )) 
unset contour 
set surface 
splot "blue.txt" using 1:2:3 with points lt rgb"blue"
unset multiplot 
pause 0.5 

c1=3.00001
c2=5.4981
sigma=3.87205
unset surface 
set contour 
set multiplot 
splot exp(-(((x-c1)**2 + (y - c2)**2)/(2*sigma**2) )) 
unset contour 
set surface 
splot "blue.txt" using 1:2:3 with points lt rgb"blue"
unset multiplot 
pause 0.5 

c1=3
c2=5.47904
sigma=3.87205
unset surface 
set contour 
set multiplot 
splot exp(-(((x-c1)**2 + (y - c2)**2)/(2*sigma**2) )) 
unset contour 
set surface 
splot "blue.txt" using 1:2:3 with points lt rgb"blue"
unset multiplot 
pause 0.5 

c1=2.99091
c2=5.39471
sigma=3.87695
unset surface 
set contour 
set multiplot 
splot exp(-(((x-c1)**2 + (y - c2)**2)/(2*sigma**2) )) 
unset contour 
set surface 
splot "blue.txt" using 1:2:3 with points lt rgb"blue"
unset multiplot 
pause 0.5 

c1=2.85907
c2=5.59959
sigma=3.87647
unset surface 
set contour 
set multiplot 
splot exp(-(((x-c1)**2 + (y - c2)**2)/(2*sigma**2) )) 
unset contour 
set surface 
splot "blue.txt" using 1:2:3 with points lt rgb"blue"
unset multiplot 
pause 0.5 

c1=3.01995
c2=5.33322
sigma=3.74651
unset surface 
set contour 
set multiplot 
splot exp(-(((x-c1)**2 + (y - c2)**2)/(2*sigma**2) )) 
unset contour 
set surface 
splot "blue.txt" using 1:2:3 with points lt rgb"blue"
unset multiplot 
pause 0.5 

c1=2.94794
c2=5.2498
sigma=3.70345
unset surface 
set contour 
set multiplot 
splot exp(-(((x-c1)**2 + (y - c2)**2)/(2*sigma**2) )) 
unset contour 
set surface 
splot "blue.txt" using 1:2:3 with points lt rgb"blue"
unset multiplot 
pause 0.5 

c1=3.53068
c2=5.52936
sigma=3.71513
unset surface 
set contour 
set multiplot 
splot exp(-(((x-c1)**2 + (y - c2)**2)/(2*sigma**2) )) 
unset contour 
set surface 
splot "blue.txt" using 1:2:3 with points lt rgb"blue"
unset multiplot 
pause 0.5 

c1=2.92274
c2=5.88301
sigma=3.57055
unset surface 
set contour 
set multiplot 
splot exp(-(((x-c1)**2 + (y - c2)**2)/(2*sigma**2) )) 
unset contour 
set surface 
splot "blue.txt" using 1:2:3 with points lt rgb"blue"
unset multiplot 
pause 0.5 

c1=2.28191
c2=5.89882
sigma=3.55818
unset surface 
set contour 
set multiplot 
splot exp(-(((x-c1)**2 + (y - c2)**2)/(2*sigma**2) )) 
unset contour 
set surface 
splot "blue.txt" using 1:2:3 with points lt rgb"blue"
unset multiplot 
pause 0.5 

