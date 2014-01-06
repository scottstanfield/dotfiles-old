set terminal png size 820, 500
set output "zipf.png"
set logscale xy

f(x) = b*x**a
fit f(x) "out" using 1:2 via a,b
plot "out" using 1:2 title 'Name frequency' with points, f(x) title sprintf("Zipf fit, f(x) = %.2f x^%.2f", b, a)
