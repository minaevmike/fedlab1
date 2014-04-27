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
c1=0.967938
c2=1.86428
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

c1=3.54127
c2=4.54956
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
c2=4.70947
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
c2=5.49825
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

c1=2.84
c2=5.20072
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

c1=3.07163
c2=5.12314
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

c1=2.71034
c2=5.80763
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

c1=3.09835
c2=5.60256
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

c1=2.87211
c2=5.14981
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

c1=3.56823
c2=5.40701
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

c1=3.08892
c2=5.81237
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

c1=2.17936
c2=5.86691
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

