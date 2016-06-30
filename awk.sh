[sailendra]$ cat emp.data
Beth    4.00    0
Dan     3.75    0
Kathy   4.00    10
Mark    5.00    20
Mary    5.50    22
Susie   4.25    18

[sailendra]$  awk '$3 > 0 { print $1, $2 * $3 }' emp.data
Kathy 40
Mark 100
Mary 121
Susie 76.5

[sailendra]$ awk '$3 == 0 { print $1 }' emp.data
Beth
Dan

[sailendra]$ awk '{ print NR, NF, $1, $NF }' emp.data
1 3 Beth 0
2 3 Dan 0
3 3 Kathy 10
4 3 Mark 20
5 3 Mary 22
6 3 Susie 18

[sailendra]$  awk '$1 = /Susie/ { print $0 }' emp.data | sort
1 4.25 18

[sailendra]$ awk '$2 >= 4 || $3 >= 20' emp.data
Beth    4.00    0
Kathy   4.00    10
Mark    5.00    20
Mary    5.50    22
Susie   4.25    18

[sailendra]$ awk 'BEGIN { print "NAME    RATE   HOURS"}{  print $0 }' emp.data
NAME    RATE   HOURS
Beth    4.00    0
Dan     3.75    0
Kathy   4.00    10
Mark    5.00    20
Mary    5.50    22
Susie   4.25    18

[sailendra]$  awk '$3 > 15 { emp = emp + 1 } END { print emp, "employees worked more than 15 hours" }' emp.data
3 employees worked more than 15 hours

[sailendra]$ awk ' $2 > maxrate { maxrate = $2; maxemp = $1 } END { print "highest hourly rate:", maxrate, "for", maxemp }' emp.data
highest hourly rate: 5.50 for Mary

[sailendra]$ awk ' NR ==3' emp.data
Kathy   4.00    10

[sailendra]$ awk 'NF >2' emp.data
Beth    4.00    0
Dan     3.75    0
Kathy   4.00    10
Mark    5.00    20
Mary    5.50    22
Susie   4.25    18

[sailendra]$  awk ' length($0) > 12 ' emp.data
Kathy   4.00    10
Susie   4.25    18

[sailendra]$ awk '{ temp = $1; $1 = $2; $2 = temp; print }' emp.data
4.00 Beth 0
3.75 Dan 0
4.00 Kathy 10
5.00 Mark 20
5.50 Mary 22
4.25 Susie 18

[sailendra]$ awk ' {sum = 0; for (i= 1;i <= NF; i= i+1) sum = sum + $i; print sum }' emp.data
4
3.75
14
25
27.5
22.25

[sailendra]$ awk '{for (i = NF; i > 0; i = i - 1) print  $i ;printf ( "\n")}'  emp.data
0
4.00
Beth

0
3.75
Dan

10
4.00
Kathy

20
5.00
Mark

22
5.50
Mary

18
4.25
Susie

[sailendra]$ awk ' { pay = pay + $2 * $3 } END {{ print NR, "employees"}{ print "total pay is", pay}{ print "average pay is", pay/NR}}' emp.data
6 employees
total pay is 337.5
average pay is 56.25

[sailendra]$ awk -v IGNORECASE=1 '$1 ~ /(Mark|sus|ath)/ {print $1,$3}' emp.data
Kathy 10
Mark 20
Susie 18
