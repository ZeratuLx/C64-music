1 rem *** ring mod effect *** by j.c. vogel & nick
5 for z = 54272 to 54296 : poke z,0 : next
10 for i = 0 to 7
20 poke 54296,15
30 poke 54277,0 : poke 54278,240
40 poke 54276,21
50 read a : if a = -1 then goto 900
60 a = a/2 ^ i
70 l% = a/256 : h% = a-(256*l%)
80 if ti < tm + 2 then 80
90 tm = ti
100 poke 54273,l% : poke 54287,h%
110 goto 40
200 data 64814,61176,57743,54502,51443,48556,45830,43258,40830,38539, 36376,34334
800 data -1
900 restore
910 next i : for t = 1 to 3000 : next : poke 54296,0
920 end
