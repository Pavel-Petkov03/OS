vim bar.sh 
#1747914493
./bar.sh 
#1747914498
./bar.sh /etc/passwd 
#1747915437
mkfifio pipe
#1747915446
mkfifo pipe
#1747915450
pipe
#1747915461
cat /etc/passwd  > pipe
#1747915467
cat /etc/passwd > pipe
#1747930888
./finder.sh 2020-SE-02
#1747930930
xxd /home/students/s0600401/scripts/test_data/sample-data/04-c/2020-SE-02/input.lfld
#1747931792
mkdir 112
#1747931795
cd 112/
#1747931801
cp ../110/Makefile . 
#1747932916
cp /home/students/s0600401/scripts/test_data/sample-data/04-c/2020-SE-02/input.lfld . 
#1747933219
rm output.bin 
#1747933298
./main input.lfld output.bin
#1747934193
./main input.lfld output.bin 
#1747934195
xxd output.bin 
#1747935215
../list-logged.sh 
#1747936146
mkdir 113
#1747936154
cd ../112/Makefile . 
#1747936157
cp ../112/Makefile . 
#1747937686
../../finder.sh 2020-SE-03
#1747937699
cp /srv/fmi-os/data/04-c/2020-SE-03 . 
#1747937703
cp -r /srv/fmi-os/data/04-c/2020-SE-03 . 
#1747937713
cd 2020-SE-03/
#1747937749
find -r 2020-SE-03/ -exec cp {} . ";"
#1747937754
find 2020-SE-03/ -exec cp {} . ";"
#1747937759
rm 2020-SE-03/
#1747937762
rm -r 2020-SE-03/
#1747937771
cat index 
#1747937776
xxd index 
#1747938011
cd /home/azisoffline/
#1747938014
cd syscalls/
#1747938016
cd sem5/
#1747938018
cd md5_parallel/
#1747938049
cd /home/azisoffline/syscalls/sem5/md5_parallel
#1747938068
cd ~
#1747938072
cd notebook-exercises/113/
#1747938075
vi mmain.c
#1747938138
man 2 -printf
#1747938141
man printf
#1747938156
man 2 printf
#1747938161
man 3 printf
#1747938211
man find
#1747938227
amn snprintf
#1747938230
man snprintf 
#1747938294
wc -l . 
#1747938297
wc -l
#1747938302
grep . 
#1747938306
find .
#1747938321
find . -regex ".*main.c"
#1747938331
find . -regex ".*main.c" | wc -l 
#1747938685
cd 113/
#1747938687
./main index 
#1747938702
mkdir 114
#1747938703
cd 114
#1747943366
../../list-logged.sh 
#1747943384
cp ../113/Makefile .
#1747943738
суид
#1747943740
SUID
#1747943746
$SUID
#1747943749
$USER
#1747943752
$
#1747943756
$USERS
#1747943759
$WHOAMI
#1747943764
$LS
#1747943780
$PYTHON
#1747943782
$PYTHONPATH
#1747943785
$DIR
#1747943788
$LOG
#1747943792
$PATH
#1747943797
lws
#1747943844
ps
#1747943878
ps aux
#1747943886
ps aux | awk -F " "
#1747943896
ps aux | awk -F " " '{print$1}' 
#1747943903
ps aux | awk -F " " '{print $1 %2}' 
#1747943908
ps aux | awk -F " " '{print $1 $2}' 
#1747943913
ps aux | awk -F " " '{print $1 " " $2}' 
#1747943951
ps aux | awk -F " " -v "current={whoami}" '{if(v == $1)}'
#1747943960
ps aux | awk -F " " -v "current={whoami}" ''
#1747943983
ps aux | awk -F " " -v "current={whoami}" '{if(current == $1) {print $2}}'
#1747943993
whoami
#1747944016
ps aux | awk -F " " -v "current={$(whoami)}" '{if(current == $1) {print $2}}'
#1747944025
ps aux | awk -F " " -v "current={$(whoami)}" '{print $1}'
#1747944031
ps aux | awk -F " " -v "current={$(whoami)}" '{print current}'
#1747944038
ps aux | awk -F " " -v "current=$(whoami)" '{print current}'
#1747944056
ps aux | awk -F " " -v "current=$(whoami)" '{if(current == $1) {print $2}}'
#1747944064
ps aux | awk -F " " -v "current=$(whoami)" '{if(current == $1) {print $2}}' | xargs kill
#1747938049
cd /home/azisoffline/syscalls/sem5/md5_parallel
#1747938068
cd ~
#1747938072
cd notebook-exercises/113/
#1747938075
vi mmain.c
#1747938138
man 2 -printf
#1747938141
man printf
#1747938156
man 2 printf
#1747938161
man 3 printf
#1747938211
man find
#1747938227
amn snprintf
#1747938230
man snprintf 
#1747938294
wc -l . 
#1747938297
wc -l
#1747938302
grep . 
#1747938306
find .
#1747938321
find . -regex ".*main.c"
#1747938331
find . -regex ".*main.c" | wc -l 
#1747938685
cd 113/
#1747938687
./main index 
#1747938702
mkdir 114
#1747938703
cd 114
#1747943366
../../list-logged.sh 
#1747943384
cp ../113/Makefile .
#1747943738
суид
#1747943740
SUID
#1747943746
$SUID
#1747943749
$USER
#1747943752
$
#1747943756
$USERS
#1747943759
$WHOAMI
#1747943764
$LS
#1747943780
$PYTHON
#1747943782
$PYTHONPATH
#1747943785
$DIR
#1747943788
$LOG
#1747943792
$PATH
#1747943797
lws
#1747943878
ps aux
#1747943886
ps aux | awk -F " "
#1747943896
ps aux | awk -F " " '{print$1}' 
#1747943903
ps aux | awk -F " " '{print $1 %2}' 
#1747943908
ps aux | awk -F " " '{print $1 $2}' 
#1747943913
ps aux | awk -F " " '{print $1 " " $2}' 
#1747943951
ps aux | awk -F " " -v "current={whoami}" '{if(v == $1)}'
#1747943960
ps aux | awk -F " " -v "current={whoami}" ''
#1747943983
ps aux | awk -F " " -v "current={whoami}" '{if(current == $1) {print $2}}'
#1747943993
whoami
#1747944016
ps aux | awk -F " " -v "current={$(whoami)}" '{if(current == $1) {print $2}}'
#1747944025
ps aux | awk -F " " -v "current={$(whoami)}" '{print $1}'
#1747944031
ps aux | awk -F " " -v "current={$(whoami)}" '{print current}'
#1747944038
ps aux | awk -F " " -v "current=$(whoami)" '{print current}'
#1747944056
ps aux | awk -F " " -v "current=$(whoami)" '{if(current == $1) {print $2}}'
#1747944064
ps aux | awk -F " " -v "current=$(whoami)" '{if(current == $1) {print $2}}' | xargs kill
#1747944089
ps
#1747944096
cd note`
#1747944513
man 2 getuid
#1747944651
./main \
#1747944661
ps 
#1747944664
ps aux 
#1747944691
man passwd 
#1747944857
man getpwuid 
#1747945144
vim amqin.c
#1747945452
cat /etc/shadow 
#1747945579
/etc/sudoers.d/
#1747945583
cat /etc/sudoers.d/
#1747945588
cat /etc/sudoers.d/allow_faculty_to_manage_students 
#1747945614
cat /etc/sudoers.d/allow_faculty_to_manage_students
#1747945623
cat /usr/local/bin/add_teacher
#1747945628
xxd /usr/local/bin/add_teacher
#1747944056
ps aux | awk -F " " -v "current=$(whoami)" '{if(current == $1) {print $2}}'
#1747944064
ps aux | awk -F " " -v "current=$(whoami)" '{if(current == $1) {print $2}}' | xargs kill
#1747953368
pkill
#1747953372
pkill -u
#1747953386
pkill -u 1244
#1747953390
ps 
#1747953394
ps aux
#1747953468
apt get
#1747953471
apt
#1747953475
apt update
#1747953496
apt list 
#1747953996
who
#1747996993
pskill -u s0600302
#1747996997
pkill -u s0600302
#1747997029
cd 114/
#1747997767
passwd -l 
#1747998023
man getuid
#1747998082
man  localtime 
#1747998211
man timep
#1747998216
man 2 timep 
#1747998220
man 2 localtime 
#1747998273
man time_t
#1747998292
man time
#1747998304
man 2 time 
#1747998442
man gettimeofdaty
#1747998496
man gettimeofday
#1747998566
man getpwuid
#1747998666
man 2 getpwuid
#1747998668
man  getpwuid
#1747999703
man 2 localtime
#1747999706
man localtime 
#1747999846
man tm
#1747999855
man time 
#1747999868
man strftime 
#1747999911
man localtime
#1748000281
./main 1 
#1748000604
./main  ls -l /root
#1748000606
ls
#1748000730
vim main.c 
#1748000839
xxd foo.log 
#1748000891
maek 
#1748000946
cat ls
#1748002079
./main ls -l /root
#1748002261
./fo
#1748002330
vim amin.c
#1748002354
man strftime
#1748002458
./main 
#1748002474
vim main,c
#1748002542
./main 1
#1748002561
make
#1748002563
rm foo.log 
#1748002572
./main ls -l
#1748002645
./main echo pavkata
#1748002651
cat foo.log 
#1748005521
лс
#1748008894
 ./list
#1748008897
cd ../ 
#1748008900
./list-logged.sh 
#1748008925
cd notebook-exercises/
#1748008929
mkdir 115
#1748008931
cd 115
#1748008938
cp ../114/Makefile .
#1748008939
ls 
#1748009633
man strtoi 
#1748009690
man strtol
#1748009726
./main 4 5
#1748009735
./main 4 4 
#1748009796
im amin.c
#1748009813
./main 1 3 
#1748009815
./main 1 4
#1748009818
./main 1 6
#1748009824
./main 2 6
#1748009830
./main 3 6
#1748009842
sleep 4
#1748009880
./main 1 2
#1748009882
./main 2 2
#1748009885
./main  2
#1748009888
./main 3 2
#1748009987
./main 1 5
#1748010248
./main 1 2 
#1748010253
./main 2 2 
#1748010261
./main 3 3 
#1748010288
make 
#1748010291
./main 1 1 
#1748010300
vim main.c
#1747944691
man passwd 
#1747944857
man getpwuid 
#1747945144
vim amqin.c
#1747945452
cat /etc/shadow 
#1747945579
/etc/sudoers.d/
#1747945583
cat /etc/sudoers.d/
#1747945588
cat /etc/sudoers.d/allow_faculty_to_manage_students 
#1747945614
cat /etc/sudoers.d/allow_faculty_to_manage_students
#1747945623
cat /usr/local/bin/add_teacher
#1747945628
xxd /usr/local/bin/add_teacher
#1747944056
ps aux | awk -F " " -v "current=$(whoami)" '{if(current == $1) {print $2}}'
#1747944064
ps aux | awk -F " " -v "current=$(whoami)" '{if(current == $1) {print $2}}' | xargs kill
#1747953368
pkill
#1747953372
pkill -u
#1747953386
pkill -u 1244
#1747953390
ps 
#1747953394
ps aux
#1747953468
apt get
#1747953471
apt
#1747953475
apt update
#1747953496
apt list 
#1747953996
who
#1747996993
pskill -u s0600302
#1747996997
pkill -u s0600302
#1747997029
cd 114/
#1747997767
passwd -l 
#1747998023
man getuid
#1747998082
man  localtime 
#1747998211
man timep
#1747998216
man 2 timep 
#1747998220
man 2 localtime 
#1747998273
man time_t
#1747998292
man time
#1747998304
man 2 time 
#1747998442
man gettimeofdaty
#1747998496
man gettimeofday
#1747998566
man getpwuid
#1747998666
man 2 getpwuid
#1747998668
man  getpwuid
#1747999703
man 2 localtime
#1747999706
man localtime 
#1747999846
man tm
#1747999855
man time 
#1747999868
man strftime 
#1747999911
man localtime
#1748000281
./main 1 
#1748000604
./main  ls -l /root
#1748000839
xxd foo.log 
#1748000946
cat ls
#1748002079
./main ls -l /root
#1748002261
./fo
#1748002354
man strftime
#1748002458
./main 
#1748002474
vim main,c
#1748002542
./main 1
#1748002561
make
#1748002563
rm foo.log 
#1748002572
./main ls -l
#1748002645
./main echo pavkata
#1748002651
cat foo.log 
#1748005521
лс
#1748008894
 ./list
#1748008900
./list-logged.sh 
#1748008929
mkdir 115
#1748008931
cd 115
#1748008938
cp ../114/Makefile .
#1748009633
man strtoi 
#1748009726
./main 4 5
#1748009735
./main 4 4 
#1748009796
im amin.c
#1748009813
./main 1 3 
#1748009815
./main 1 4
#1748009818
./main 1 6
#1748009824
./main 2 6
#1748009830
./main 3 6
#1748009842
sleep 4
#1748009880
./main 1 2
#1748009882
./main 2 2
#1748009885
./main  2
#1748009888
./main 3 2
#1748009987
./main 1 5
#1748010248
./main 1 2 
#1748010253
./main 2 2 
#1748010261
./main 3 3 
#1748010291
./main 1 1 
#1748021462
clear
#1748021466
cd notebook-exercises/
#1748021468
ls
#1748021470
cd 115/
#1748021500
rm "/home/students/s0600302/.local/share/nvim/swap//%home%students%s0600302%notebook-exercises%115%main.c.swp"
#1748022999
man strtol
#1748023019
MAKE 
#1748023075
./main 5 4 
#1748023131
./main 5 1
#1748023141
./main 5 0.4
#1748023142
./main 5 0.3
#1748023145
./main 5 1.2
#1748023154
./main 5 2
#1748023167
cd ../ 
#1748023549
mkdir 116
#1748023551
cd 116
#1748023566
cp ../115/Makefile . 
#1748023566
LS 
#1748024657
man ltostr
#1748026971
man atol 
#1748029298
vim main/.c
#1748029688
./main 4 3
#1748030682
./main 4 554
#1748030685
./main 4 45
#1748030850
amek 
#1748030857
./main 4 20
#1748030870
./main 4 9
#1748031470
./main 20 1
#1748031472
./main 20 3
#1748031519
./main 2 20 
#1748031617
bin main.c
#1748031739
vim amin.c
#1748031754
maek 
#1748031762
vi main.c
#1748031792
./main 3 20
#1748031796
4 40 
#1748031798
3 35
#1748031806
./main 7 35
#1748031814
./main 6 35
#1748031824
./main 5 35
#1748031829
./main 4 35
#1748031830
./main 3 35
#1748031833
./main 1 35
#1748031836
./main 2 35
#1748037425
../../list-logged.sh 
#1748037429
who 
#1748039134
vi mamin.c
#1748039219
make 
#1748039220
./main 5 220
#1748039222
vim main.c
#1748039243
xxd main.c 
#1748039254
cat main.c 
#1748039261
vim a
#1748039278
vim
#1748039305
cp main.c main.c 
#1748039314
mv main.c main.c 
#1748039322
cp main.c temp 
#1748039327
rm main.c 
#1748039333
cp temp main.c
#1748039336
vim main.c 
#1748039338
ls 
#1748039340
rm temp 
#1748039342
vim 
#1748039347
exit 
#1748039352
vim 
#1748039356
./list-logged.sh 
#1748039378
ps 
#1748039380
ps aux 
#1748039413
pskill -u s0600302
#1748039416
pkill -u s0600302
#1748039347
exit 
#1748039352
vim 
#1748039356
./list-logged.sh 
#1748039380
ps aux 
#1748039413
pskill -u s0600302
#1748039416
pkill -u s0600302
#1748039423
vi
#1748039434
cd notebook-exercises/
#1748039435
ls 
#1748039439
cd 116/
#1748039497
./main 5 20 
#1748039498
ps 
#1748039504
vim main.c
#1748039608
make 
#1748039621
pkill us s0600302 
#1748039627
pkill -u  s0600302 
#1748039347
exit 
#1748039352
vim 
#1748039356
./list-logged.sh 
#1748039380
ps aux 
#1748039413
pskill -u s0600302
#1748039416
pkill -u s0600302
#1748039423
vi
#1748039621
pkill us s0600302 
#1748039627
pkill -u  s0600302 
#1748039635
cd notebook-exercises/
#1748039638
cd 116/
#1748039643
./main 5 20 
#1748039737
./main 3 15
#1748039742
ls 
#1748039748
ps 
#1748039841
./main 3 4 
#1748039890
./main 1 2 
#1748040055
make 
#1748040058
./main 3 20 
#1748040066
vim main.c
#1748040091
pkill -u s0600302
pkill -u s0600302
ps 
exit 
exit 
ls 
ls 
clear
tmux 
exit
ls 
ls 
еьит 
logout 
#1748039890
./main 1 2 
#1748040058
./main 3 20 
#1748040091
pkill -u s0600302
#1748040622
clear
#1748040625
cd notebook-exercises/
#1748040626
cd 116/
#1748040635
vim main.c 
#1748040640
rm "/home/students/s0600302/.local/share/nvim/swap//%home%students%s0600302%notebook-exercises%116%main.c.swp"
#1748040663
make 
#1748040667
./main 5 20 
#1748040679
./main 5 5
#1748040691
./main 10 15
#1748040695
./main 10 10
#1748040698
./main 20 20 
#1748040702
vim main.c
#1748040091
pkill -u s0600302
#1748040097
cd notebook-exercises/
#1748040103
cd 116/
#1748040105
ls 
#1748040106
ps 
#1748040114
./main 1 20 
#1748040123
vim main.c
#1748039413
pskill -u s0600302
#1748039416
pkill -u s0600302
#1748039423
vi
#1748039621
pkill us s0600302 
#1748039627
pkill -u  s0600302 
#1748039643
./main 5 20 
#1748039737
./main 3 15
#1748039742
ls 
#1748039890
./main 1 2 
#1748040058
./main 3 20 
#1748040091
pkill -u s0600302
#1748040179
cd notebook-exercises/
#1748040181
cd 116/
#1748040206
rm "~/.local/share/nvim/swap//%home%students%s0600302%notebook-exercises%116%main.c.swp"
#1748040213
rm "/home/students/s0600302/.local/share/nvim/swap//%home%students%s0600302%notebook-exercises%116%main.c.swp"
#1748040224
./main 2 20 
#1748040284
./main 3 4 
#1748040429
ps 
#1748040484
make 
#1748040486
./main 4 20 
#1748040508
./main 4 4
#1748040517
./main 4 5
#1748040535
vim main.c
лс 
ls 
ls 
лс 
clear
pkill -u s0600302 
#1748040284
./main 3 4 
#1748040484
make 
#1748040486
./main 4 20 
#1748040508
./main 4 4
#1748040517
./main 4 5
#1748041737
лс 
#1748041737
лс 
#1748041737
pkill -u s0600302 
#1748041759
cd notebook-exercises/
#1748041763
cd 116/
#1748041765
vim main.c
#1748041899
./main 5 20 
#1748041906
ps 
#1748041918
./main 5 20
#1748041923
./main 5 10 
#1748041926
./main 5 15
#1748041929
./main 5 10
#1748041937
./main 10 20
#1748041940
vim main.c 
#1748042297
cd ../../
#1748042298
ls -a 
#1748042303
vim .bash_profile 
#1748042311
vim .profile
#1748042349
vim .bashrc 
#1748042418
ls 
#1748042420
clear
#1748042424
exit 
#1748042420
clear
#1748042438
vim .bashrc 
#1748042472
ls 
#1748042475
exit 
#1748039423
vi
#1748039621
pkill us s0600302 
#1748039627
pkill -u  s0600302 
#1748039737
./main 3 15
#1748039890
./main 1 2 
#1748040058
./main 3 20 
#1748040091
pkill -u s0600302
#1748040206
rm "~/.local/share/nvim/swap//%home%students%s0600302%notebook-exercises%116%main.c.swp"
#1748040213
rm "/home/students/s0600302/.local/share/nvim/swap//%home%students%s0600302%notebook-exercises%116%main.c.swp"
#1748040224
./main 2 20 
#1748040284
./main 3 4 
#1748040486
./main 4 20 
#1748040508
./main 4 4
#1748040517
./main 4 5
#1748042478
лс 
#1748042478
лс 
#1748042478
clear
#1748042478
pkill -u s0600302 
#1748040284
./main 3 4 
#1748040486
./main 4 20 
#1748040508
./main 4 4
#1748040517
./main 4 5
#1748041737
лс 
#1748041737
лс 
#1748041737
pkill -u s0600302 
#1748041918
./main 5 20
#1748041923
./main 5 10 
#1748041926
./main 5 15
#1748041929
./main 5 10
#1748041937
./main 10 20
#1748042298
ls -a 
#1748042303
vim .bash_profile 
#1748042311
vim .profile
#1748042349
vim .bashrc 
#1748042420
clear
#1748042424
exit 
#1748042420
clear
#1748042438
vim .bashrc 
#1748042475
exit 
#1748042481
cd notebook-exercises/
#1748042591
./main 10 4 
#1748042624
./main 20 4 
#1748042656
./main 20 5 
#1748042660
./main 20 20
#1748042663
./main 20 30
#1748042668
./main 4 30
#1748042718
./main 30 20
#1748042728
./main 7 20
#1748042733
./main 7 4 
#1748042736
./main 7 5 
#1748042737
./main 7 56
#1748042741
./main 7 6
#1748042744
./main 7 7
#1748042746
./main 7 8
#1748042748
./main 7 9
#1748042887
./main 7 10
#1748042916
./main 4 5 
#1748042919
./main 4 6
#1748042922
./main 4 7
#1748042924
./main 4 8
#1748042926
./main 4 9
#1748042935
./main 2 5
#1748043048
./main 2 10
#1748043185
ps 
#1748043291
./main 5 20 
#1748043297
./main 5 5 
#1748043301
./main 5 4
#1748043303
./main 3 3 
#1748043579
./main 5 4 
#1748043588
./main 5 6
#1748043592
./main 5 7
#1748043595
./main 5 33
#1748043616
./main 5 2
#1748043621
./main 8 2
#1748043627
./main 8 33
#1748043631
./main 8 4
#1748043636
./main 1 33
#1748043767
make 
#1748043889
cd 116/
#1748043891
vim main.c
#1748043926
mkdir 117
#1748043928
cd 117/
#1748043933
cp ../116/Makefile . 
#1748043935
vim main.c 
#1748043971
find
#1748043974
cd ../../
#1748044011
md5sum ./test/main
#1748044047
cd seminars/
#1748044051
find 
#1748044058
find -type f 
#1748044071
find -type f -exec md5sum ";"
#1748044086
find -type f -exec md5sum {} ";"
#1748044225
find -type f -exec md5sum {} ";" | xargs -I {} touch "{}.hash"
#1748044252
touch ./third_seminar/Makefile.hash':
#1748044255
./third_seminar/Makefile.hash'
#1748044259
./third_seminar/Makefile.hash
#1748044276
mkfile 
#1748044286
touch -r ./third_seminar/Makefile.hash
#1748044330
cp 1 2 3 
#1748044336
cp 1 2 . 
#1748044393
find -type f
#1748044410
find -type f | md5sum 
#1748044425
find -type f -exec md5sum {} ';' 
#1748044546
find -type f -exec md5sum {} ';' | cut -d " " | xargs -n 2 
#1748044630
find -type f -exec md5sum {} ';' | awk -F " " '{print $1 $2}'
#1748044642
find -type f -exec md5sum {} ';' | awk -F " " '{print $2 " " $1}'
#1748044679
find -type f -exec md5sum {} ';' | awk -F " " '{print $2 " " $1}' | xargs -n 2 cp
#1748044699
rm 0f09fff386e524e40c659bb98858dc38
#1748044702
em 1430ac42bfecdb39e6000e6b56f98be0
#1748044909
find -type f -exec md5sum {} ';'
#1748045132
cd ../ 
#1748045180
dirname ./secondSeminar/Makefile
#1748045183
basename ./secondSeminar/Makefile
#1748045238
ls 
#1748045240
./list-logged.sh 
#1748042746
./main 7 8
#1748042748
./main 7 9
#1748042887
./main 7 10
#1748042916
./main 4 5 
#1748042919
./main 4 6
#1748042922
./main 4 7
#1748042924
./main 4 8
#1748042926
./main 4 9
#1748042935
./main 2 5
#1748043048
./main 2 10
#1748043185
ps 
#1748043291
./main 5 20 
#1748043297
./main 5 5 
#1748043301
./main 5 4
#1748043303
./main 3 3 
#1748043579
./main 5 4 
#1748043588
./main 5 6
#1748043592
./main 5 7
#1748043595
./main 5 33
#1748043616
./main 5 2
#1748043621
./main 8 2
#1748043627
./main 8 33
#1748043631
./main 8 4
#1748043636
./main 1 33
#1748043889
cd 116/
#1748043926
mkdir 117
#1748043933
cp ../116/Makefile . 
#1748043971
find
#1748043974
cd ../../
#1748044011
md5sum ./test/main
#1748044047
cd seminars/
#1748044051
find 
#1748044058
find -type f 
#1748044071
find -type f -exec md5sum ";"
#1748044086
find -type f -exec md5sum {} ";"
#1748044225
find -type f -exec md5sum {} ";" | xargs -I {} touch "{}.hash"
#1748044252
touch ./third_seminar/Makefile.hash':
#1748044255
./third_seminar/Makefile.hash'
#1748044259
./third_seminar/Makefile.hash
#1748044276
mkfile 
#1748044286
touch -r ./third_seminar/Makefile.hash
#1748044330
cp 1 2 3 
#1748044336
cp 1 2 . 
#1748044410
find -type f | md5sum 
#1748044425
find -type f -exec md5sum {} ';' 
#1748044546
find -type f -exec md5sum {} ';' | cut -d " " | xargs -n 2 
#1748044630
find -type f -exec md5sum {} ';' | awk -F " " '{print $1 $2}'
#1748044642
find -type f -exec md5sum {} ';' | awk -F " " '{print $2 " " $1}'
#1748044679
find -type f -exec md5sum {} ';' | awk -F " " '{print $2 " " $1}' | xargs -n 2 cp
#1748044699
rm 0f09fff386e524e40c659bb98858dc38
#1748044702
em 1430ac42bfecdb39e6000e6b56f98be0
#1748044909
find -type f -exec md5sum {} ';'
#1748045132
cd ../ 
#1748045180
dirname ./secondSeminar/Makefile
#1748045183
basename ./secondSeminar/Makefile
#1748045240
./list-logged.sh 
#1748045365
wholist
#1748045369
apropos who 
#1748045378
whois 
#1748045393
w
#1748045403
man 2 
#1748045407
man man 2 
#1748045413
man 2 2 
#1748045416
man 2 w
#1748045435
w s0600302 
#1748045443
man w
#1748046359
cd notebook-exercises/
#1748046368
cd 117/
#1748046397
find ~ type -f
#1748046401
find ~ type f
#1748046414
find ~ -type f
#1748046441
find ~ -type f -exec md5sum {} ";"
#1748047352
basename /home/students/s0600302/test/main
#1748047736
apropos stringreverse 
#1748047740
apropos reverse
#1748047743
apropos reverse sting 
#1748047747
apropos reverse string 
#1748047778
apropos reverse string | grep "reverse"
#1748047795
apropos reverse string | grep "string "
#1748048042
man find
#1748048107
find -regex "^.hash"
#1748048110
find ~ -regex "^.hash"
#1748048112
find ~ -regex ".hash"
#1748048116
find ~ -regex ".*"
#1748048125
find ~ -regex "^*"
#1748048128
find ~ -regex "^.*"
#1748048145
touch a.hash
#1748048147
find ~ -regex "^.*$.hash"
#1748048190
find ~ -regex ".*$\.hash"
#1748048193
find ~ -regex ".*^\.hash"
#1748048196
find ~ -regex ".*\.hash"
#1748048220
find -type f | grep -o ".hash"
#1748048224
find -type f | grep -v ".hash"
#1748048271
find / -type f | grep -v ".hash"
#1748048426
clear
#1748048435
find / -type f | grep -v "$.hash"
#1748048442
find / -type f | grep -v "^.hash"
#1748048447
get_base_name_and_dirname(filename, basename, dirname);
#1748048455
find  -type f | grep -v "^.hash"
#1748048460
find  -type f | grep -v "\.hash"
#1748048467
find  -type f | grep -v ".*$\.hash"
#1748048477
find  -type f | grep -v ".*\.hash"
#1748048485
find  -type f | grep -v ".*\.hash$"
#1748048690
apropos getline 
#1748048694
man getline 
#1748050071
vim mai..cv 
#1748050351
man strcat 
#1748050565
maek 
#1748050872
rm a.hash 
#1748050887
find / -type f
#1748050893
find  -type f
#1748050916
find . -typef
#1748050918
find . -type f
#1748050932
find tupe -f
#1748050935
find type -f
#1748050939
find -type f
#1748050968
VIM MAIN.;C 
#1748051024
vim amin.c
#1748051053
md5sum
#1748051057
md3sum
#1748051237
vim main.c
#1748051311
vim main.c 
#1748051335
make 
#1748051353
ls 
#1748051362
md5sum ./main 
#1748051377
./main . 
#1748048110
find ~ -regex "^.hash"
#1748048112
find ~ -regex ".hash"
#1748048116
find ~ -regex ".*"
#1748048125
find ~ -regex "^*"
#1748048128
find ~ -regex "^.*"
#1748048145
touch a.hash
#1748048147
find ~ -regex "^.*$.hash"
#1748048190
find ~ -regex ".*$\.hash"
#1748048193
find ~ -regex ".*^\.hash"
#1748048196
find ~ -regex ".*\.hash"
#1748048220
find -type f | grep -o ".hash"
#1748048224
find -type f | grep -v ".hash"
#1748048271
find / -type f | grep -v ".hash"
#1748048426
clear
#1748048435
find / -type f | grep -v "$.hash"
#1748048442
find / -type f | grep -v "^.hash"
#1748048447
get_base_name_and_dirname(filename, basename, dirname);
#1748048455
find  -type f | grep -v "^.hash"
#1748048460
find  -type f | grep -v "\.hash"
#1748048467
find  -type f | grep -v ".*$\.hash"
#1748048477
find  -type f | grep -v ".*\.hash"
#1748048485
find  -type f | grep -v ".*\.hash$"
#1748048690
apropos getline 
#1748048694
man getline 
#1748050071
vim mai..cv 
#1748050351
man strcat 
#1748050565
maek 
#1748050872
rm a.hash 
#1748050887
find / -type f
#1748050893
find  -type f
#1748050916
find . -typef
#1748050918
find . -type f
#1748050932
find tupe -f
#1748050935
find type -f
#1748050939
find -type f
#1748050968
VIM MAIN.;C 
#1748051024
vim amin.c
#1748051053
md5sum
#1748051057
md3sum
#1748084973
cd notebook-exercises/
#1748084977
cd 117/
#1748084981
vim main.c 
#1748085011
md5sum ./main 
#1748085107
./main 
#1748085109
./main /
#1748085346
./main .
#1748085349
ls 
#1748085409
make 
#1748085412
./main . 
#1748085414
vim main.c
#1748040695
./main 10 10
#1748040698
./main 20 20 
#1748040091
pkill -u s0600302
#1748040103
cd 116/
#1748040114
./main 1 20 
#1748039413
pskill -u s0600302
#1748039416
pkill -u s0600302
#1748039423
vi
#1748039621
pkill us s0600302 
#1748039627
pkill -u  s0600302 
#1748039643
./main 5 20 
#1748039737
./main 3 15
#1748039890
./main 1 2 
#1748040058
./main 3 20 
#1748040091
pkill -u s0600302
#1748040181
cd 116/
#1748040206
rm "~/.local/share/nvim/swap//%home%students%s0600302%notebook-exercises%116%main.c.swp"
#1748040213
rm "/home/students/s0600302/.local/share/nvim/swap//%home%students%s0600302%notebook-exercises%116%main.c.swp"
#1748040224
./main 2 20 
#1748040284
./main 3 4 
#1748040486
./main 4 20 
#1748040508
./main 4 4
#1748040517
./main 4 5
#1748085509
pkill -u s0600302 
#1748040284
./main 3 4 
#1748040486
./main 4 20 
#1748040508
./main 4 4
#1748040517
./main 4 5
#1748041737
pkill -u s0600302 
#1748041763
cd 116/
#1748041899
./main 5 20 
#1748041918
./main 5 20
#1748041923
./main 5 10 
#1748041926
./main 5 15
#1748041929
./main 5 10
#1748041937
./main 10 20
#1748042297
cd ../../
#1748042298
ls -a 
#1748042303
vim .bash_profile 
#1748042311
vim .profile
#1748042349
vim .bashrc 
#1748042424
exit 
#1748042438
vim .bashrc 
#1748042475
exit 
#1748039423
vi
#1748039621
pkill us s0600302 
#1748039627
pkill -u  s0600302 
#1748039737
./main 3 15
#1748039890
./main 1 2 
#1748040058
./main 3 20 
#1748040091
pkill -u s0600302
#1748040206
rm "~/.local/share/nvim/swap//%home%students%s0600302%notebook-exercises%116%main.c.swp"
#1748040213
rm "/home/students/s0600302/.local/share/nvim/swap//%home%students%s0600302%notebook-exercises%116%main.c.swp"
#1748040224
./main 2 20 
#1748040284
./main 3 4 
#1748040486
./main 4 20 
#1748040508
./main 4 4
#1748040517
./main 4 5
#1748042478
pkill -u s0600302 
#1748040284
./main 3 4 
#1748040486
./main 4 20 
#1748040508
./main 4 4
#1748040517
./main 4 5
#1748041737
pkill -u s0600302 
#1748041918
./main 5 20
#1748041923
./main 5 10 
#1748041926
./main 5 15
#1748041929
./main 5 10
#1748041937
./main 10 20
#1748042298
ls -a 
#1748042303
vim .bash_profile 
#1748042311
vim .profile
#1748042349
vim .bashrc 
#1748042424
exit 
#1748042438
vim .bashrc 
#1748042475
exit 
#1748042591
./main 10 4 
#1748042624
./main 20 4 
#1748042656
./main 20 5 
#1748042660
./main 20 20
#1748042663
./main 20 30
#1748042668
./main 4 30
#1748042718
./main 30 20
#1748042728
./main 7 20
#1748042733
./main 7 4 
#1748042736
./main 7 5 
#1748042737
./main 7 56
#1748042741
./main 7 6
#1748042744
./main 7 7
#1748042746
./main 7 8
#1748042748
./main 7 9
#1748042887
./main 7 10
#1748042916
./main 4 5 
#1748042919
./main 4 6
#1748042922
./main 4 7
#1748042924
./main 4 8
#1748042926
./main 4 9
#1748042935
./main 2 5
#1748043048
./main 2 10
#1748043291
./main 5 20 
#1748043297
./main 5 5 
#1748043301
./main 5 4
#1748043303
./main 3 3 
#1748043579
./main 5 4 
#1748043588
./main 5 6
#1748043592
./main 5 7
#1748043595
./main 5 33
#1748043616
./main 5 2
#1748043621
./main 8 2
#1748043627
./main 8 33
#1748043631
./main 8 4
#1748043636
./main 1 33
#1748043889
cd 116/
#1748043926
mkdir 117
#1748043933
cp ../116/Makefile . 
#1748043971
find
#1748043974
cd ../../
#1748044011
md5sum ./test/main
#1748044047
cd seminars/
#1748044051
find 
#1748044058
find -type f 
#1748044071
find -type f -exec md5sum ";"
#1748044086
find -type f -exec md5sum {} ";"
#1748044225
find -type f -exec md5sum {} ";" | xargs -I {} touch "{}.hash"
#1748044252
touch ./third_seminar/Makefile.hash':
#1748044255
./third_seminar/Makefile.hash'
#1748044259
./third_seminar/Makefile.hash
#1748044276
mkfile 
#1748044286
touch -r ./third_seminar/Makefile.hash
#1748044330
cp 1 2 3 
#1748044336
cp 1 2 . 
#1748044410
find -type f | md5sum 
#1748044425
find -type f -exec md5sum {} ';' 
#1748044546
find -type f -exec md5sum {} ';' | cut -d " " | xargs -n 2 
#1748044630
find -type f -exec md5sum {} ';' | awk -F " " '{print $1 $2}'
#1748044642
find -type f -exec md5sum {} ';' | awk -F " " '{print $2 " " $1}'
#1748044679
find -type f -exec md5sum {} ';' | awk -F " " '{print $2 " " $1}' | xargs -n 2 cp
#1748044699
rm 0f09fff386e524e40c659bb98858dc38
#1748044702
em 1430ac42bfecdb39e6000e6b56f98be0
#1748044909
find -type f -exec md5sum {} ';'
#1748045180
dirname ./secondSeminar/Makefile
#1748045183
basename ./secondSeminar/Makefile
#1748045240
./list-logged.sh 
#1748042746
./main 7 8
#1748042748
./main 7 9
#1748042887
./main 7 10
#1748042916
./main 4 5 
#1748042919
./main 4 6
#1748042922
./main 4 7
#1748042924
./main 4 8
#1748042926
./main 4 9
#1748042935
./main 2 5
#1748043048
./main 2 10
#1748043291
./main 5 20 
#1748043297
./main 5 5 
#1748043301
./main 5 4
#1748043303
./main 3 3 
#1748043579
./main 5 4 
#1748043588
./main 5 6
#1748043592
./main 5 7
#1748043595
./main 5 33
#1748043616
./main 5 2
#1748043621
./main 8 2
#1748043627
./main 8 33
#1748043631
./main 8 4
#1748043636
./main 1 33
#1748043889
cd 116/
#1748043926
mkdir 117
#1748043933
cp ../116/Makefile . 
#1748043971
find
#1748043974
cd ../../
#1748044011
md5sum ./test/main
#1748044047
cd seminars/
#1748044051
find 
#1748044058
find -type f 
#1748044071
find -type f -exec md5sum ";"
#1748044086
find -type f -exec md5sum {} ";"
#1748044225
find -type f -exec md5sum {} ";" | xargs -I {} touch "{}.hash"
#1748044252
touch ./third_seminar/Makefile.hash':
#1748044255
./third_seminar/Makefile.hash'
#1748044259
./third_seminar/Makefile.hash
#1748044276
mkfile 
#1748044286
touch -r ./third_seminar/Makefile.hash
#1748044330
cp 1 2 3 
#1748044336
cp 1 2 . 
#1748044410
find -type f | md5sum 
#1748044425
find -type f -exec md5sum {} ';' 
#1748044546
find -type f -exec md5sum {} ';' | cut -d " " | xargs -n 2 
#1748044630
find -type f -exec md5sum {} ';' | awk -F " " '{print $1 $2}'
#1748044642
find -type f -exec md5sum {} ';' | awk -F " " '{print $2 " " $1}'
#1748044679
find -type f -exec md5sum {} ';' | awk -F " " '{print $2 " " $1}' | xargs -n 2 cp
#1748044699
rm 0f09fff386e524e40c659bb98858dc38
#1748044702
em 1430ac42bfecdb39e6000e6b56f98be0
#1748044909
find -type f -exec md5sum {} ';'
#1748045180
dirname ./secondSeminar/Makefile
#1748045183
basename ./secondSeminar/Makefile
#1748045240
./list-logged.sh 
#1748045365
wholist
#1748045369
apropos who 
#1748045378
whois 
#1748045393
w
#1748045403
man 2 
#1748045407
man man 2 
#1748045413
man 2 2 
#1748045416
man 2 w
#1748045435
w s0600302 
#1748045443
man w
#1748046397
find ~ type -f
#1748046401
find ~ type f
#1748046414
find ~ -type f
#1748046441
find ~ -type f -exec md5sum {} ";"
#1748047352
basename /home/students/s0600302/test/main
#1748047736
apropos stringreverse 
#1748047740
apropos reverse
#1748047743
apropos reverse sting 
#1748047747
apropos reverse string 
#1748047778
apropos reverse string | grep "reverse"
#1748047795
apropos reverse string | grep "string "
#1748048042
man find
#1748048107
find -regex "^.hash"
#1748048110
find ~ -regex "^.hash"
#1748048112
find ~ -regex ".hash"
#1748048116
find ~ -regex ".*"
#1748048125
find ~ -regex "^*"
#1748048128
find ~ -regex "^.*"
#1748048145
touch a.hash
#1748048147
find ~ -regex "^.*$.hash"
#1748048190
find ~ -regex ".*$\.hash"
#1748048193
find ~ -regex ".*^\.hash"
#1748048196
find ~ -regex ".*\.hash"
#1748048220
find -type f | grep -o ".hash"
#1748048224
find -type f | grep -v ".hash"
#1748048271
find / -type f | grep -v ".hash"
#1748048435
find / -type f | grep -v "$.hash"
#1748048442
find / -type f | grep -v "^.hash"
#1748048447
get_base_name_and_dirname(filename, basename, dirname);
#1748048455
find  -type f | grep -v "^.hash"
#1748048460
find  -type f | grep -v "\.hash"
#1748048467
find  -type f | grep -v ".*$\.hash"
#1748048477
find  -type f | grep -v ".*\.hash"
#1748048485
find  -type f | grep -v ".*\.hash$"
#1748048690
apropos getline 
#1748048694
man getline 
#1748050071
vim mai..cv 
#1748050351
man strcat 
#1748050565
maek 
#1748050872
rm a.hash 
#1748050887
find / -type f
#1748050893
find  -type f
#1748050916
find . -typef
#1748050918
find . -type f
#1748050932
find tupe -f
#1748050935
find type -f
#1748050968
VIM MAIN.;C 
#1748051024
vim amin.c
#1748051053
md5sum
#1748051057
md3sum
#1748051362
md5sum ./main 
#1748085513
cd notebook-exercises/
#1748085517
cd clera
#1748085518
clear
#1748085521
cd 117/
#1748085585
rm "/home/students/s0600302/.local/share/nvim/swap//%home%students%s06003
ls 
vim main.c 
#1748085594
rm "/home/students/s0600302/.local/share/nvim/swap//%home%students%s06003
ls 
vim main.c
#1748085605
rm "/home/students/s0600302/.local/share/nvim/swap//%home%students%s06003
02%notebook-exercises%117%main.c.swp"
#1748085611
vim main.c 
#1748085622
rm /home/students/s0600302/.local/share/nvim/swap//%home%students%s0600302%notebook-exercises%117%main.c.swp
#1748085787
md5sum ./main.
#1748086430
./main ./main  
#1748086579
find -type -f 
#1748086582
find -type f
#1748086647
md5sum ./main
#1748087072
./main . 
#1748087089
./main .
#1748088420
malke 
#1748089456
passwd
#1748089542
./list
#1748089578
лс 
#1748089582
../list
#1748089586
../../list-logged.sh 
#1748089593
ls
#1748089687
cd ../ 
#1748089692
mkdir 118
#1748089698
cp ../Makefile .
#1748089702
rm Makefile 
#1748089704
cd 118/
#1748089708
cp ../117/Makefile . 
#1748090062
catr /srv/sample-data/02-shell/2024-SE-01/README.txt
#1748090063
cat /srv/sample-data/02-shell/2024-SE-01/README.txt
#1748090280
/dev/urandom
#1748090295
./dev/urandom
#1748090310
/ed
#1748090342
find /dev/
#1748090345
find /dev/urandom
#1748092524
man wait
#1748092574
man 2 wait 
#1748093001
male 
#1748093297
cat /srv/sample-data/02-shell/2024-SE-01/scp_result.txt
#1748093307
cat
#1748093311
cat /srv/sample-data/04-c/2024-SE-01/accounts_service\
#1748093314
cat /srv/sample-data/04-c/2024-SE-01/accounts_service
#1748093325
vim /srv/sample-data/04-c/2024-SE-01/accounts_service
#1748093340
cp /srv/sample-data/04-c/2024-SE-01/accounts_service . 
#1748093358
../../finder.sh 2024-SE-01
#1748093368
cat /srv/sample-data/04-c/2024-SE-01/README.txt
#1748093377
cp /srv/sample-data/04-c/2024-SE-01/README.txt . 
#1748094018
./main accounts_service 2 result.txt
#1748094021
./main accounts_service 3 result.txt
#1748094024
./main accounts_service 4 result.txt
#1748094030
./main accounts_service 5 result.txt
#1748094033
./main accounts_service 6 result.txt
#1748094038
./main accounts_service 7 result.txt
#1748094040
./main accounts_service 8 result.txt
#1748094044
./main accounts_service 9 result.txt
#1748094065
./main accounts_service 1 result.txt
#1748094116
cat result.txt
#1748094123
./main accounts_service 50  result.txt
#1748094128
cat res
#1748095103
./main accounts_service 10 result.txt
#1748095143
cat result.txt 
#1748095145
rm result.txt 
#1748095177
./main accounts_service 20 result.txt
#1748095185
cat Makefile 
#1748095193
cat README.txt 
#1748095205
./main accounts_service 50 result.txt
#1748095213
kill -l "${?}"
#1748095491
./main ./accounts_service 50 result.bin
#1748095499
./main ./accounts_service 10 res
#1748095504
./main ./accounts_service 10 result.txt
#1748095517
ps 
#1748095553
ls 
#1748096146
./main ./accounts_service 1  result.txt
#1748096962
./main ./accounts_service 10 
#1748096975
vim main.c
#1748097036
make 
#1748097039
./main 
#1748097041
./main ./accounts_service 1 result.txt
#1748048271
find / -type f | grep -v ".hash"
#1748048426
clear
#1748048435
find / -type f | grep -v "$.hash"
#1748048442
find / -type f | grep -v "^.hash"
#1748048447
get_base_name_and_dirname(filename, basename, dirname);
#1748048455
find  -type f | grep -v "^.hash"
#1748048460
find  -type f | grep -v "\.hash"
#1748048467
find  -type f | grep -v ".*$\.hash"
#1748048477
find  -type f | grep -v ".*\.hash"
#1748048485
find  -type f | grep -v ".*\.hash$"
#1748048690
apropos getline 
#1748048694
man getline 
#1748050071
vim mai..cv 
#1748050351
man strcat 
#1748050565
maek 
#1748050872
rm a.hash 
#1748050887
find / -type f
#1748050893
find  -type f
#1748050916
find . -typef
#1748050918
find . -type f
#1748050932
find tupe -f
#1748050935
find type -f
#1748050939
find -type f
#1748050968
VIM MAIN.;C 
#1748051024
vim amin.c
#1748051053
md5sum
#1748051057
md3sum
#1748084977
cd 117/
#1748085011
md5sum ./main 
#1748085107
./main 
#1748085109
./main /
#1748085346
./main .
#1748085412
./main . 
#1748101137
cd notebook-exercises/
#1748101141
cd 118/
#1748101517
cat README.txt 
#1748101602
bim main.c
#1748101605
vim main.c 
#1748101621
find /dev/null 
#1748101628
echo aaaaaaaaaaaaaaaaaaaaaaa >  /dev/null 
#1748101632
echo aaaaaaaaaaaaaaaaaaaaaaa >>  /dev/null 
#1748101635
echo aaaaaaaaaaaaaaaaaaaaaaa >>  /dev/null/ 
#1748101638
echo aaaaaaaaaaaaaaaaaaaaaaa >>  /dev/null/
#1748101639
echo aaaaaaaaaaaaaaaaaaaaaaa >>  /dev/null
#1748101963
rm result.bin 
#1748101965
cat result.bin 
#1748101970
make 
#1748101971
./main ./accounts_service 50 result.bin
#1748101974
vim main.c
#1748101976
ls 
#1748101979
ps
#1748101998
pkill -u s0600302
#1748101974
vim main.c
#1748101979
ps
#1748102003
cd notebook-exercises/
#1748102006
cd 118/
#1748102013
./main ./accounts_service 50 result.bin
#1748102015
ls 
#1748102016
ps 
#1748102039
pkill -u s0600302
#1748048690
apropos getline 
#1748048694
man getline 
#1748050071
vim mai..cv 
#1748050351
man strcat 
#1748050565
maek 
#1748050872
rm a.hash 
#1748050887
find / -type f
#1748050893
find  -type f
#1748050916
find . -typef
#1748050918
find . -type f
#1748050932
find tupe -f
#1748050935
find type -f
#1748050968
VIM MAIN.;C 
#1748051024
vim amin.c
#1748051053
md5sum
#1748051057
md3sum
#1748051362
md5sum ./main 
#1748085517
cd clera
#1748085518
clear
#1748085521
cd 117/
#1748085585
rm "/home/students/s0600302/.local/share/nvim/swap//%home%students%s06003
#1748085594
rm "/home/students/s0600302/.local/share/nvim/swap//%home%students%s06003
#1748085605
rm "/home/students/s0600302/.local/share/nvim/swap//%home%students%s06003
#1748102042
02%notebook-exercises%117%main.c.swp"
#1748085622
rm /home/students/s0600302/.local/share/nvim/swap//%home%students%s0600302%notebook-exercises%117%main.c.swp
#1748085787
md5sum ./main.
#1748086430
./main ./main  
#1748086579
find -type -f 
#1748086582
find -type f
#1748086647
md5sum ./main
#1748087072
./main . 
#1748087089
./main .
#1748088420
malke 
#1748089456
passwd
#1748089578
лс 
#1748089582
../list
#1748089593
ls
#1748089687
cd ../ 
#1748089692
mkdir 118
#1748089698
cp ../Makefile .
#1748089702
rm Makefile 
#1748089708
cp ../117/Makefile . 
#1748090062
catr /srv/sample-data/02-shell/2024-SE-01/README.txt
#1748090063
cat /srv/sample-data/02-shell/2024-SE-01/README.txt
#1748090295
./dev/urandom
#1748090310
/ed
#1748090342
find /dev/
#1748090345
find /dev/urandom
#1748092524
man wait
#1748092574
man 2 wait 
#1748093001
male 
#1748093297
cat /srv/sample-data/02-shell/2024-SE-01/scp_result.txt
#1748093307
cat
#1748093311
cat /srv/sample-data/04-c/2024-SE-01/accounts_service\
#1748093314
cat /srv/sample-data/04-c/2024-SE-01/accounts_service
#1748093325
vim /srv/sample-data/04-c/2024-SE-01/accounts_service
#1748093368
cat /srv/sample-data/04-c/2024-SE-01/README.txt
#1748093377
cp /srv/sample-data/04-c/2024-SE-01/README.txt . 
#1748094018
./main accounts_service 2 result.txt
#1748094021
./main accounts_service 3 result.txt
#1748094024
./main accounts_service 4 result.txt
#1748094030
./main accounts_service 5 result.txt
#1748094033
./main accounts_service 6 result.txt
#1748094038
./main accounts_service 7 result.txt
#1748094040
./main accounts_service 8 result.txt
#1748094044
./main accounts_service 9 result.txt
#1748094065
./main accounts_service 1 result.txt
#1748094116
cat result.txt
#1748094123
./main accounts_service 50  result.txt
#1748094128
cat res
#1748095103
./main accounts_service 10 result.txt
#1748095143
cat result.txt 
#1748095145
rm result.txt 
#1748095177
./main accounts_service 20 result.txt
#1748095185
cat Makefile 
#1748095205
./main accounts_service 50 result.txt
#1748095499
./main ./accounts_service 10 res
#1748095504
./main ./accounts_service 10 result.txt
#1748096146
./main ./accounts_service 1  result.txt
#1748096962
./main ./accounts_service 10 
#1748097039
./main 
#1748097041
./main ./accounts_service 1 result.txt
#1748048271
find / -type f | grep -v ".hash"
#1748048426
clear
#1748048435
find / -type f | grep -v "$.hash"
#1748048442
find / -type f | grep -v "^.hash"
#1748048447
get_base_name_and_dirname(filename, basename, dirname);
#1748048455
find  -type f | grep -v "^.hash"
#1748048460
find  -type f | grep -v "\.hash"
#1748048467
find  -type f | grep -v ".*$\.hash"
#1748048477
find  -type f | grep -v ".*\.hash"
#1748048485
find  -type f | grep -v ".*\.hash$"
#1748048690
apropos getline 
#1748048694
man getline 
#1748050071
vim mai..cv 
#1748050351
man strcat 
#1748050565
maek 
#1748050872
rm a.hash 
#1748050887
find / -type f
#1748050893
find  -type f
#1748050916
find . -typef
#1748050918
find . -type f
#1748050932
find tupe -f
#1748050935
find type -f
#1748050939
find -type f
#1748050968
VIM MAIN.;C 
#1748051024
vim amin.c
#1748051053
md5sum
#1748051057
md3sum
#1748084977
cd 117/
#1748085011
md5sum ./main 
#1748085107
./main 
#1748085109
./main /
#1748085346
./main .
#1748085412
./main . 
#1748101602
bim main.c
#1748101621
find /dev/null 
#1748101628
echo aaaaaaaaaaaaaaaaaaaaaaa >  /dev/null 
#1748101632
echo aaaaaaaaaaaaaaaaaaaaaaa >>  /dev/null 
#1748101635
echo aaaaaaaaaaaaaaaaaaaaaaa >>  /dev/null/ 
#1748101638
echo aaaaaaaaaaaaaaaaaaaaaaa >>  /dev/null/
#1748101639
echo aaaaaaaaaaaaaaaaaaaaaaa >>  /dev/null
#1748101979
ps
#1748101998
pkill -u s0600302
#1748101979
ps
#1748102039
pkill -u s0600302
#1748102045
cd notebook-exercises/
#1748102047
cd 118/
#1748102796
./main ./accounts_service 200  result.bin
#1748102800
./main ./accounts_service 10000  result.bin
#1748102824
./main ./accounts_service 1000000  result.bin
#1748102829
./main ./accounts_service 100  result.bin
#1748102838
vim main.;c 
#1748103246
make 
#1748103251
vim main.c
#1748103340
../../finder.sh 2024-SE-01
#1748103352
cat /home/jory/materials/week_13/solutions/2024-SE-01/main.c
#1748103366
cat /home/students/s0600305/2024-SE-01/main.c
#1748103388
cat /home/students/s0600360/c/problems/119-2024-SE-01/main.c
#1748103402
cp /home/students/s0600360/c/problems/119-2024-SE-01/main.c .
#1748103410
./main ./accounts_service 20  result.bin
#1748103430
./main ./accounts_service 100 result.bin
#1748103433
./main ./accounts_service 1000 result.bin
#1748103443
cat README.txt 
#1748103462
kill -l "${?}"
#1748103542
./main ./accounts_service 50 result.bin./main ./accounts_service 50 result.bin./main ./accounts_service 50 result.bin
#1748103549
./main ./accounts_service 50 result.bin./main ./accounts_service 50 result.bin
#1748103556
./main ./accounts_service 100000 result.bin
#1748103570
touch result.bin
#1748103579
cat result.bin 
#1748103619
rm result.bin 
#1748103670
1 > accounts_service 
#1748103676
echo 1 > accounts_service 
#1748103679
echo 2 > accounts_service 
#1748103681
echo fewfew > accounts_service 
#1748103707
read
#1748103714
write
#1748103721
/dev/urandom
#1748103736
/dev/urandom > a.txt
#1748103754
yes -n 5
#1748103757
man yes
#1748103776
/dev/null
#1748103810
./accounts_service 0>/dev/urandom 
#1748103831
./accounts_service  0>"321321"
#1748103847
rm 321321 
#1748103849
./accounts_service  1>/dev/urandom 
#1748103860
1>/dev/urandom 
#1748103892
head -n 16 /dev/urandom 
#1748103898
head -c  16 /dev/urandom 
#1748103921
vim accounts_service 
#1748103931
rm accounts_service 
#1748103939
rm a.txt 
#1748103961
../../finder.sh  2024-SE-01
#1748103967
cat /srv/sample-data/04-c/2024-SE-01/accounts_service . 
#1748103971
cp /srv/sample-data/04-c/2024-SE-01/accounts_service . 
#1748103979
head -c  16 /dev/urandom | ./accounts_service 
#1748104053
./main ./accounts_service 5000 result.bin
#1748104059
./main ./accounts_service 5000000 result.bin
#1748104064
./main ./accounts_service 50 result.bin
#1748104069
rm main.c 
#1748104070
l 
#1748104071
ls 
#1748104078
vim main.c 
#1748104127
ps aux 
#1748104145
pager
#1748104153
pager main.c 
#1748104160
pager /etc/passwd 
#1748104212
./list
#1748104222
../../list-logged.sh 
#1748104230
ps 
#1748104234
who 
#1748103402
cp /home/students/s0600360/c/problems/119-2024-SE-01/main.c .
#1748103410
./main ./accounts_service 20  result.bin
#1748103430
./main ./accounts_service 100 result.bin
#1748103433
./main ./accounts_service 1000 result.bin
#1748103462
kill -l "${?}"
#1748103542
./main ./accounts_service 50 result.bin./main ./accounts_service 50 result.bin./main ./accounts_service 50 result.bin
#1748103549
./main ./accounts_service 50 result.bin./main ./accounts_service 50 result.bin
#1748103556
./main ./accounts_service 100000 result.bin
#1748103570
touch result.bin
#1748103579
cat result.bin 
#1748103619
rm result.bin 
#1748103670
1 > accounts_service 
#1748103676
echo 1 > accounts_service 
#1748103679
echo 2 > accounts_service 
#1748103681
echo fewfew > accounts_service 
#1748103707
read
#1748103714
write
#1748103721
/dev/urandom
#1748103736
/dev/urandom > a.txt
#1748103754
yes -n 5
#1748103757
man yes
#1748103776
/dev/null
#1748103810
./accounts_service 0>/dev/urandom 
#1748103831
./accounts_service  0>"321321"
#1748103847
rm 321321 
#1748103849
./accounts_service  1>/dev/urandom 
#1748103860
1>/dev/urandom 
#1748103892
head -n 16 /dev/urandom 
#1748103898
head -c  16 /dev/urandom 
#1748103931
rm accounts_service 
#1748103939
rm a.txt 
#1748103961
../../finder.sh  2024-SE-01
#1748103967
cat /srv/sample-data/04-c/2024-SE-01/accounts_service . 
#1748103971
cp /srv/sample-data/04-c/2024-SE-01/accounts_service . 
#1748104053
./main ./accounts_service 5000 result.bin
#1748104059
./main ./accounts_service 5000000 result.bin
#1748104064
./main ./accounts_service 50 result.bin
#1748104069
rm main.c 
#1748104070
l 
#1748104127
ps aux 
#1748104145
pager
#1748104153
pager main.c 
#1748104160
pager /etc/passwd 
#1748104212
./list
#1748104222
../../list-logged.sh 
#1748104230
ps 
#1748104234
who 
#1748112538
./list-logged.sh 
#1748112544
cd notebook-exercises/
#1748112579
head  /dev/urandom
#1748112597
head -c  16 /dev/urandom | ./accounts_service 
#1748112611
head -c  100000000000000 /dev/urandom | ./accounts_service
#1748112629
head -c  50 /dev/urandom | ./accounts_service
#1748112644
head -c  100000 /dev/urandom | ./accounts_service
#1748112652
head -c  1 /dev/urandom | ./accounts_service
#1748112660
head -c  1 /dev/urandom 
#1748112669
$(head -c  1 /dev/urandom )
#1748112740
$(( head -c  1 /dev/urandom + 0))
#1748112750
$(( head -c  1 /dev/urandom ))
#1748112758
$((C + 0 ))
#1748112777
echo $((C + 0 ))
#1748112782
echo $(('C' + 0 ))
#1748112786
echo $((c + 0 ))
#1748112788
echo $((a + 0 ))
#1748112792
echo $(("A" + 0 ))
#1748112829
head -c  1 /dev/urandom
#1748112837
head -c  2 /dev/urandom | ./accounts_service 
#1748112841
head -c  1 /dev/urandom | ./accounts_service 
#1748112846
head -c  50000 /dev/urandom | ./accounts_service 
#1748112879
cleaqr
#1748112883
cat README.txt 
#1748112900
head -c  50000 /dev/urandom | ./accounts_service
#1748112906
man repeat 
#1748112910
apropos cycle 
#1748112924
for i in {0..10}; do head -c  50000 /dev/urandom | ./accounts_service; done
#1748112974
for i in {0..50}; do head -c  2 /dev/urandom | ./accounts_service; done
#1748113001
vim accounts_service 
#1748113059
clear
#1748113062
objdump -d accounts_service 
#1748113210
../../finder.sh 2024-SE-01
#1748113226
cat /home/jory/materials/week_13/solutions/2024-SE-01/main.c
#1748113256
cat /home/students/s45771/c/2_1/2024-SE-01/main.c
#1748113327
cd 97/
#1748113387
xxd list.bin 
#1748113389
xxd data.bin 
#1748113446
xxdd out.bin 
#1748113620
make 
#1748113622
./main list.bin data.bin out.bin 
#1748113624
xxd out.bin 
#1748113697
vim main.c
#1748115561
rm ] 
#1748115925
lds 
#1748115929
cd ../ 
#1748115932
cd 118/
#1748115937
vim main.c 
#1748115941
ls 
#1748115944
./accounts_service 
#1748115969
head -c /dev/urandom | ./accounts_service 
#1748115989
for i in {1..50}; do head -c /dev/urandom | ./accounts_service ; done
#1748116099
for i in {1..50}; do head -c /dev/urandom 1>/dev/null | ./accounts_service ; done
#1748116149
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service 2>/dev/null ; done
#1748116168
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service 1>/dev/null ; done
#1748116177
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service 1>&2 1>/dev/null ; done
#1748116182
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service 1>&2 2>/dev/null ; done
#1748116221
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service  2>/dev/null  1>&2 ; done
#1748116240
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service  2>/dev/null  ; done
#1748116244
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service  2>/dev/null 1>&2 ; done
#1748116408
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116436
for i in {1..2}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116459
for i in {1..3}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116478
for i in {1..100000}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116513
for i in {1..10000}; do head -c /dev/urandom  | ./accounts_service ; done
#1748050968
VIM MAIN.;C 
#1748051024
vim amin.c
#1748051053
md5sum
#1748051057
md3sum
#1748084977
cd 117/
#1748085011
md5sum ./main 
#1748085109
./main /
#1748085346
./main .
#1748085412
./main . 
#1748101602
bim main.c
#1748101621
find /dev/null 
#1748101628
echo aaaaaaaaaaaaaaaaaaaaaaa >  /dev/null 
#1748101632
echo aaaaaaaaaaaaaaaaaaaaaaa >>  /dev/null 
#1748101635
echo aaaaaaaaaaaaaaaaaaaaaaa >>  /dev/null/ 
#1748101638
echo aaaaaaaaaaaaaaaaaaaaaaa >>  /dev/null/
#1748101639
echo aaaaaaaaaaaaaaaaaaaaaaa >>  /dev/null
#1748101963
rm result.bin 
#1748101965
cat result.bin 
#1748101971
./main ./accounts_service 50 result.bin
#1748101998
pkill -u s0600302
#1748102013
./main ./accounts_service 50 result.bin
#1748102039
pkill -u s0600302
#1748048690
apropos getline 
#1748048694
man getline 
#1748050071
vim mai..cv 
#1748050351
man strcat 
#1748050872
rm a.hash 
#1748050887
find / -type f
#1748050893
find  -type f
#1748050916
find . -typef
#1748050918
find . -type f
#1748050932
find tupe -f
#1748050935
find type -f
#1748050968
VIM MAIN.;C 
#1748051024
vim amin.c
#1748051053
md5sum
#1748051057
md3sum
#1748051362
md5sum ./main 
#1748085517
cd clera
#1748085521
cd 117/
#1748085585
rm "/home/students/s0600302/.local/share/nvim/swap//%home%students%s06003
#1748085594
rm "/home/students/s0600302/.local/share/nvim/swap//%home%students%s06003
#1748085605
rm "/home/students/s0600302/.local/share/nvim/swap//%home%students%s06003
#1748102042
02%notebook-exercises%117%main.c.swp"
#1748085622
rm /home/students/s0600302/.local/share/nvim/swap//%home%students%s0600302%notebook-exercises%117%main.c.swp
#1748085787
md5sum ./main.
#1748086430
./main ./main  
#1748086579
find -type -f 
#1748086582
find -type f
#1748086647
md5sum ./main
#1748087072
./main . 
#1748087089
./main .
#1748088420
malke 
#1748089456
passwd
#1748089582
../list
#1748089593
ls
#1748089692
mkdir 118
#1748089698
cp ../Makefile .
#1748089702
rm Makefile 
#1748089708
cp ../117/Makefile . 
#1748090062
catr /srv/sample-data/02-shell/2024-SE-01/README.txt
#1748090063
cat /srv/sample-data/02-shell/2024-SE-01/README.txt
#1748090295
./dev/urandom
#1748090310
/ed
#1748090342
find /dev/
#1748090345
find /dev/urandom
#1748092524
man wait
#1748093001
male 
#1748093297
cat /srv/sample-data/02-shell/2024-SE-01/scp_result.txt
#1748093307
cat
#1748093311
cat /srv/sample-data/04-c/2024-SE-01/accounts_service\
#1748093314
cat /srv/sample-data/04-c/2024-SE-01/accounts_service
#1748093325
vim /srv/sample-data/04-c/2024-SE-01/accounts_service
#1748093368
cat /srv/sample-data/04-c/2024-SE-01/README.txt
#1748093377
cp /srv/sample-data/04-c/2024-SE-01/README.txt . 
#1748094018
./main accounts_service 2 result.txt
#1748094021
./main accounts_service 3 result.txt
#1748094024
./main accounts_service 4 result.txt
#1748094030
./main accounts_service 5 result.txt
#1748094033
./main accounts_service 6 result.txt
#1748094038
./main accounts_service 7 result.txt
#1748094040
./main accounts_service 8 result.txt
#1748094044
./main accounts_service 9 result.txt
#1748094065
./main accounts_service 1 result.txt
#1748094116
cat result.txt
#1748094123
./main accounts_service 50  result.txt
#1748094128
cat res
#1748095103
./main accounts_service 10 result.txt
#1748095143
cat result.txt 
#1748095145
rm result.txt 
#1748095177
./main accounts_service 20 result.txt
#1748095185
cat Makefile 
#1748095205
./main accounts_service 50 result.txt
#1748095499
./main ./accounts_service 10 res
#1748095504
./main ./accounts_service 10 result.txt
#1748096146
./main ./accounts_service 1  result.txt
#1748096962
./main ./accounts_service 10 
#1748097041
./main ./accounts_service 1 result.txt
#1748048271
find / -type f | grep -v ".hash"
#1748048435
find / -type f | grep -v "$.hash"
#1748048442
find / -type f | grep -v "^.hash"
#1748048447
get_base_name_and_dirname(filename, basename, dirname);
#1748048455
find  -type f | grep -v "^.hash"
#1748048460
find  -type f | grep -v "\.hash"
#1748048467
find  -type f | grep -v ".*$\.hash"
#1748048477
find  -type f | grep -v ".*\.hash"
#1748048485
find  -type f | grep -v ".*\.hash$"
#1748048690
apropos getline 
#1748048694
man getline 
#1748050071
vim mai..cv 
#1748050351
man strcat 
#1748050872
rm a.hash 
#1748050887
find / -type f
#1748050893
find  -type f
#1748050916
find . -typef
#1748050918
find . -type f
#1748050932
find tupe -f
#1748050935
find type -f
#1748050939
find -type f
#1748050968
VIM MAIN.;C 
#1748051024
vim amin.c
#1748051053
md5sum
#1748051057
md3sum
#1748084977
cd 117/
#1748085011
md5sum ./main 
#1748085109
./main /
#1748085346
./main .
#1748085412
./main . 
#1748101602
bim main.c
#1748101621
find /dev/null 
#1748101628
echo aaaaaaaaaaaaaaaaaaaaaaa >  /dev/null 
#1748101632
echo aaaaaaaaaaaaaaaaaaaaaaa >>  /dev/null 
#1748101635
echo aaaaaaaaaaaaaaaaaaaaaaa >>  /dev/null/ 
#1748101638
echo aaaaaaaaaaaaaaaaaaaaaaa >>  /dev/null/
#1748101639
echo aaaaaaaaaaaaaaaaaaaaaaa >>  /dev/null
#1748101998
pkill -u s0600302
#1748102039
pkill -u s0600302
#1748102796
./main ./accounts_service 200  result.bin
#1748102800
./main ./accounts_service 10000  result.bin
#1748102824
./main ./accounts_service 1000000  result.bin
#1748102829
./main ./accounts_service 100  result.bin
#1748102838
vim main.;c 
#1748103366
cat /home/students/s0600305/2024-SE-01/main.c
#1748103388
cat /home/students/s0600360/c/problems/119-2024-SE-01/main.c
#1748103402
cp /home/students/s0600360/c/problems/119-2024-SE-01/main.c .
#1748103410
./main ./accounts_service 20  result.bin
#1748103430
./main ./accounts_service 100 result.bin
#1748103433
./main ./accounts_service 1000 result.bin
#1748103462
kill -l "${?}"
#1748103542
./main ./accounts_service 50 result.bin./main ./accounts_service 50 result.bin./main ./accounts_service 50 result.bin
#1748103549
./main ./accounts_service 50 result.bin./main ./accounts_service 50 result.bin
#1748103556
./main ./accounts_service 100000 result.bin
#1748103570
touch result.bin
#1748103579
cat result.bin 
#1748103619
rm result.bin 
#1748103670
1 > accounts_service 
#1748103676
echo 1 > accounts_service 
#1748103679
echo 2 > accounts_service 
#1748103681
echo fewfew > accounts_service 
#1748103707
read
#1748103714
write
#1748103721
/dev/urandom
#1748103736
/dev/urandom > a.txt
#1748103754
yes -n 5
#1748103757
man yes
#1748103776
/dev/null
#1748103810
./accounts_service 0>/dev/urandom 
#1748103831
./accounts_service  0>"321321"
#1748103847
rm 321321 
#1748103849
./accounts_service  1>/dev/urandom 
#1748103860
1>/dev/urandom 
#1748103892
head -n 16 /dev/urandom 
#1748103898
head -c  16 /dev/urandom 
#1748103939
rm a.txt 
#1748103961
../../finder.sh  2024-SE-01
#1748103967
cat /srv/sample-data/04-c/2024-SE-01/accounts_service . 
#1748103971
cp /srv/sample-data/04-c/2024-SE-01/accounts_service . 
#1748104053
./main ./accounts_service 5000 result.bin
#1748104059
./main ./accounts_service 5000000 result.bin
#1748104064
./main ./accounts_service 50 result.bin
#1748104069
rm main.c 
#1748104070
l 
#1748104127
ps aux 
#1748104145
pager
#1748104153
pager main.c 
#1748104160
pager /etc/passwd 
#1748104212
./list
#1748104222
../../list-logged.sh 
#1748104234
who 
#1748112538
./list-logged.sh 
#1748112544
cd notebook-exercises/
#1748112579
head  /dev/urandom
#1748112597
head -c  16 /dev/urandom | ./accounts_service 
#1748112611
head -c  100000000000000 /dev/urandom | ./accounts_service
#1748112629
head -c  50 /dev/urandom | ./accounts_service
#1748112644
head -c  100000 /dev/urandom | ./accounts_service
#1748112652
head -c  1 /dev/urandom | ./accounts_service
#1748112660
head -c  1 /dev/urandom 
#1748112669
$(head -c  1 /dev/urandom )
#1748112740
$(( head -c  1 /dev/urandom + 0))
#1748112750
$(( head -c  1 /dev/urandom ))
#1748112758
$((C + 0 ))
#1748112777
echo $((C + 0 ))
#1748112782
echo $(('C' + 0 ))
#1748112786
echo $((c + 0 ))
#1748112788
echo $((a + 0 ))
#1748112792
echo $(("A" + 0 ))
#1748112829
head -c  1 /dev/urandom
#1748112837
head -c  2 /dev/urandom | ./accounts_service 
#1748112841
head -c  1 /dev/urandom | ./accounts_service 
#1748112846
head -c  50000 /dev/urandom | ./accounts_service 
#1748112879
cleaqr
#1748112883
cat README.txt 
#1748112900
head -c  50000 /dev/urandom | ./accounts_service
#1748112906
man repeat 
#1748112910
apropos cycle 
#1748112924
for i in {0..10}; do head -c  50000 /dev/urandom | ./accounts_service; done
#1748112974
for i in {0..50}; do head -c  2 /dev/urandom | ./accounts_service; done
#1748113001
vim accounts_service 
#1748113059
clear
#1748113062
objdump -d accounts_service 
#1748113210
../../finder.sh 2024-SE-01
#1748113226
cat /home/jory/materials/week_13/solutions/2024-SE-01/main.c
#1748113256
cat /home/students/s45771/c/2_1/2024-SE-01/main.c
#1748113327
cd 97/
#1748113387
xxd list.bin 
#1748113446
xxdd out.bin 
#1748113622
./main list.bin data.bin out.bin 
#1748113624
xxd out.bin 
#1748115561
rm ] 
#1748115925
lds 
#1748115944
./accounts_service 
#1748115969
head -c /dev/urandom | ./accounts_service 
#1748115989
for i in {1..50}; do head -c /dev/urandom | ./accounts_service ; done
#1748116099
for i in {1..50}; do head -c /dev/urandom 1>/dev/null | ./accounts_service ; done
#1748116149
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service 2>/dev/null ; done
#1748116168
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service 1>/dev/null ; done
#1748116177
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service 1>&2 1>/dev/null ; done
#1748116182
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service 1>&2 2>/dev/null ; done
#1748116221
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service  2>/dev/null  1>&2 ; done
#1748116240
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service  2>/dev/null  ; done
#1748116244
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service  2>/dev/null 1>&2 ; done
#1748116408
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116436
for i in {1..2}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116459
for i in {1..3}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116478
for i in {1..100000}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116513
for i in {1..10000}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116519
for i in {1..10}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116524
for i in {1..100}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116536
for i in {1..1000}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116549
for i in {1..1}; do head -c /dev/urandom  | 
#1748116558
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116592
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service 1>/dev/null 1>&2; done
#1748116630
for i in {1..1}; do head -c /dev/random  | ./accounts_service 1>/dev/null 2>&1; don
#1748116643
for i in {1..1}; do head -c 1  | ./accounts_service 1>/dev/null 2>&1; done
#1748116653
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service 1>/dev/null 2>&1; done
#1748116695
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service 1>/dev/null ; done
#1748116699
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service 2>/dev/null ; done
#1748116704
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service 2>/dev/null 1>%2 ; done
#1748116708
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service 2>/dev/null 1>&2 ; done
#1748116723
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service 1>/dev/null 2>/dev/null ; done
#1748116872
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service  1>&2 ; done
#1748116896
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service 2>/dev/null 1>/dev/null ; done
#1748116911
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service   2>/dev/null ; done
#1748116917
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service  1>/dev/null 2>/dev/null ; done
#1748116978
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service  1>/dev/null ; done
#1748117007
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service  2>/dev/null ; done
#1748117019
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service  >/dev/null ; done
#1748117026
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service  >/dev/null 2>&1; done
#1748117473
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service  >/dev/null; done
#1748118030
rm %2
#1748118034
rm accounts_service 
#1748118062
cat /home/jory/materials/week_13/problems/2023-SE-02/main.c
#1748118111
../../finder.sh 2023-SE-02
#1748118115
../../finder.sh 2023-SE-02 | grep "tests"
#1748118119
../../finder.sh 2023-SE-02 | grep "test"
#1748120275
cp data-orig.bin data.bin
#1748120279
car data.bin 
#1748120291
./main data.bin comparator.bin 
#1748120315
xxd data.bin 
#1748120391
cp /srv/fmi-os/data/03-c/2022-SE-01/data-orig.bin . 
#1748120408
xxd data.bin \
#1748120412
./main data-orig.bin comparator.bin 
#1748120417
xxd data-orig.bin 
#1748120468
лс 
#1748120605
cd 98/
#1748120961
../../finder.sh 2022-SE-01 
#1748120981
cat /home/students/s0600305/2022-SE-01/main.c
#1748121050
cd 118/
#1748121054
rm README.txt 
#1748121691
man 2 wait 
#1748122013
mkdir test
#1748122048
mkdir found
#1748122062
cp ../../Makefile .
#1748122172
cd test/found/main.c
#1748122180
cd test/found/main
#1748122182
cd test/found/
#1748122202
./main test/found/main
#1748122206
./main test/found/main.c
#1748122325
./main test/found/main 
#1748122378
cd f
#1748122381
cd found/
#1748122403
cd ../../
#1748122407
./test/found/main 
#1748122428
mkdir forever
#1748122430
cd forever/
#1748122480
cd ../
#1748122492
./main ./test/forever/main 
#1748122518
./main ./test/found/main 
#1748122526
./main ./test/found/main ./test/forever/main 
#1748123174
cd 118
#1748123179
vim main.c 
#1748123810
./main ./test/forever/main ./test/found/main 
#1748123823
./main ./test/forever/main ./test/forever/main 
#1748123861
cd test/
#1748123866
mkdir segfault
#1748123867
cd segfault/
#1748123875
cp ../../Makefile . 
#1748123983
./main 
#1748123985
cd ../ 
#1748123998
./main ./test/segfault/main 
#1748124008
./main ./test/segfault/main ./test/forever/main 
#1748124021
./main ./test/segfault/main ./test/found/main 
#1748124278
kill 2359
#1748124282
ps
#1748124429
maek 
#1748124435
vim main.c
#1748124443
make 
#1748124448
ls 
#1748124450
ps 
#1748124456
ps -u s0600302 
#1748124461
pskill -u s0600302 
#1748124464
pkill -u s0600302 
#1748123998
./main ./test/segfault/main 
#1748124008
./main ./test/segfault/main ./test/forever/main 
#1748124021
./main ./test/segfault/main ./test/found/main 
#1748124278
kill 2359
#1748124282
ps
#1748124429
maek 
#1748124456
ps -u s0600302 
#1748124461
pskill -u s0600302 
#1748124464
pkill -u s0600302 
#1748124470
cd notebook-exercises/
#1748124498
./main ./test/forever/main ./test/forever/main ./test/found/main 
#1748124500
ps 
#1748124586
los 
#1748124598
cd 118/
#1748124600
vim main.c
#1748124633
make 
#1748124634
ls 
#1748124636
cd ../ 
#1748124461
pskill -u s0600302 
#1748124464
pkill -u s0600302 
#1748126468
./list-logged.sh 
#1748126474
cd notebook-exercises/
#1748126551
cd 118/
#1748126552
vim main.c
#1748126581
make 
#1748126584
cd ../ 
#1748126585
ls 
#1748095504
./main ./accounts_service 10 result.txt
#1748096146
./main ./accounts_service 1  result.txt
#1748096962
./main ./accounts_service 10 
#1748097041
./main ./accounts_service 1 result.txt
#1748048271
find / -type f | grep -v ".hash"
#1748048435
find / -type f | grep -v "$.hash"
#1748048442
find / -type f | grep -v "^.hash"
#1748048447
get_base_name_and_dirname(filename, basename, dirname);
#1748048455
find  -type f | grep -v "^.hash"
#1748048460
find  -type f | grep -v "\.hash"
#1748048467
find  -type f | grep -v ".*$\.hash"
#1748048477
find  -type f | grep -v ".*\.hash"
#1748048485
find  -type f | grep -v ".*\.hash$"
#1748048690
apropos getline 
#1748048694
man getline 
#1748050071
vim mai..cv 
#1748050351
man strcat 
#1748050872
rm a.hash 
#1748050887
find / -type f
#1748050893
find  -type f
#1748050916
find . -typef
#1748050918
find . -type f
#1748050932
find tupe -f
#1748050935
find type -f
#1748050939
find -type f
#1748050968
VIM MAIN.;C 
#1748051024
vim amin.c
#1748051053
md5sum
#1748051057
md3sum
#1748085011
md5sum ./main 
#1748085109
./main /
#1748085346
./main .
#1748085412
./main . 
#1748101602
bim main.c
#1748101621
find /dev/null 
#1748101628
echo aaaaaaaaaaaaaaaaaaaaaaa >  /dev/null 
#1748101632
echo aaaaaaaaaaaaaaaaaaaaaaa >>  /dev/null 
#1748101635
echo aaaaaaaaaaaaaaaaaaaaaaa >>  /dev/null/ 
#1748101638
echo aaaaaaaaaaaaaaaaaaaaaaa >>  /dev/null/
#1748101639
echo aaaaaaaaaaaaaaaaaaaaaaa >>  /dev/null
#1748101998
pkill -u s0600302
#1748102039
pkill -u s0600302
#1748102796
./main ./accounts_service 200  result.bin
#1748102800
./main ./accounts_service 10000  result.bin
#1748102824
./main ./accounts_service 1000000  result.bin
#1748102829
./main ./accounts_service 100  result.bin
#1748102838
vim main.;c 
#1748103366
cat /home/students/s0600305/2024-SE-01/main.c
#1748103388
cat /home/students/s0600360/c/problems/119-2024-SE-01/main.c
#1748103402
cp /home/students/s0600360/c/problems/119-2024-SE-01/main.c .
#1748103410
./main ./accounts_service 20  result.bin
#1748103430
./main ./accounts_service 100 result.bin
#1748103433
./main ./accounts_service 1000 result.bin
#1748103542
./main ./accounts_service 50 result.bin./main ./accounts_service 50 result.bin./main ./accounts_service 50 result.bin
#1748103549
./main ./accounts_service 50 result.bin./main ./accounts_service 50 result.bin
#1748103556
./main ./accounts_service 100000 result.bin
#1748103570
touch result.bin
#1748103670
1 > accounts_service 
#1748103676
echo 1 > accounts_service 
#1748103679
echo 2 > accounts_service 
#1748103681
echo fewfew > accounts_service 
#1748103707
read
#1748103714
write
#1748103721
/dev/urandom
#1748103736
/dev/urandom > a.txt
#1748103754
yes -n 5
#1748103757
man yes
#1748103776
/dev/null
#1748103810
./accounts_service 0>/dev/urandom 
#1748103831
./accounts_service  0>"321321"
#1748103847
rm 321321 
#1748103849
./accounts_service  1>/dev/urandom 
#1748103860
1>/dev/urandom 
#1748103892
head -n 16 /dev/urandom 
#1748103898
head -c  16 /dev/urandom 
#1748103939
rm a.txt 
#1748103961
../../finder.sh  2024-SE-01
#1748103967
cat /srv/sample-data/04-c/2024-SE-01/accounts_service . 
#1748104053
./main ./accounts_service 5000 result.bin
#1748104059
./main ./accounts_service 5000000 result.bin
#1748104069
rm main.c 
#1748104070
l 
#1748104127
ps aux 
#1748104145
pager
#1748104153
pager main.c 
#1748104160
pager /etc/passwd 
#1748104212
./list
#1748104222
../../list-logged.sh 
#1748104234
who 
#1748112538
./list-logged.sh 
#1748112579
head  /dev/urandom
#1748112597
head -c  16 /dev/urandom | ./accounts_service 
#1748112611
head -c  100000000000000 /dev/urandom | ./accounts_service
#1748112629
head -c  50 /dev/urandom | ./accounts_service
#1748112644
head -c  100000 /dev/urandom | ./accounts_service
#1748112652
head -c  1 /dev/urandom | ./accounts_service
#1748112660
head -c  1 /dev/urandom 
#1748112669
$(head -c  1 /dev/urandom )
#1748112740
$(( head -c  1 /dev/urandom + 0))
#1748112750
$(( head -c  1 /dev/urandom ))
#1748112758
$((C + 0 ))
#1748112777
echo $((C + 0 ))
#1748112782
echo $(('C' + 0 ))
#1748112786
echo $((c + 0 ))
#1748112788
echo $((a + 0 ))
#1748112792
echo $(("A" + 0 ))
#1748112829
head -c  1 /dev/urandom
#1748112837
head -c  2 /dev/urandom | ./accounts_service 
#1748112841
head -c  1 /dev/urandom | ./accounts_service 
#1748112846
head -c  50000 /dev/urandom | ./accounts_service 
#1748112879
cleaqr
#1748112900
head -c  50000 /dev/urandom | ./accounts_service
#1748112906
man repeat 
#1748112910
apropos cycle 
#1748112924
for i in {0..10}; do head -c  50000 /dev/urandom | ./accounts_service; done
#1748112974
for i in {0..50}; do head -c  2 /dev/urandom | ./accounts_service; done
#1748113001
vim accounts_service 
#1748113062
objdump -d accounts_service 
#1748113226
cat /home/jory/materials/week_13/solutions/2024-SE-01/main.c
#1748113256
cat /home/students/s45771/c/2_1/2024-SE-01/main.c
#1748113327
cd 97/
#1748113387
xxd list.bin 
#1748113446
xxdd out.bin 
#1748113622
./main list.bin data.bin out.bin 
#1748113624
xxd out.bin 
#1748115561
rm ] 
#1748115925
lds 
#1748115969
head -c /dev/urandom | ./accounts_service 
#1748115989
for i in {1..50}; do head -c /dev/urandom | ./accounts_service ; done
#1748116099
for i in {1..50}; do head -c /dev/urandom 1>/dev/null | ./accounts_service ; done
#1748116149
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service 2>/dev/null ; done
#1748116168
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service 1>/dev/null ; done
#1748116177
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service 1>&2 1>/dev/null ; done
#1748116182
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service 1>&2 2>/dev/null ; done
#1748116221
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service  2>/dev/null  1>&2 ; done
#1748116240
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service  2>/dev/null  ; done
#1748116244
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service  2>/dev/null 1>&2 ; done
#1748116408
for i in {1..50}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116436
for i in {1..2}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116459
for i in {1..3}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116478
for i in {1..100000}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116513
for i in {1..10000}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116519
for i in {1..10}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116524
for i in {1..100}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116536
for i in {1..1000}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116549
for i in {1..1}; do head -c /dev/urandom  | 
#1748116558
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service ; done
#1748116592
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service 1>/dev/null 1>&2; done
#1748116630
for i in {1..1}; do head -c /dev/random  | ./accounts_service 1>/dev/null 2>&1; don
#1748116643
for i in {1..1}; do head -c 1  | ./accounts_service 1>/dev/null 2>&1; done
#1748116653
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service 1>/dev/null 2>&1; done
#1748116695
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service 1>/dev/null ; done
#1748116699
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service 2>/dev/null ; done
#1748116704
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service 2>/dev/null 1>%2 ; done
#1748116708
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service 2>/dev/null 1>&2 ; done
#1748116723
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service 1>/dev/null 2>/dev/null ; done
#1748116872
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service  1>&2 ; done
#1748116896
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service 2>/dev/null 1>/dev/null ; done
#1748116911
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service   2>/dev/null ; done
#1748116917
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service  1>/dev/null 2>/dev/null ; done
#1748116978
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service  1>/dev/null ; done
#1748117007
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service  2>/dev/null ; done
#1748117019
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service  >/dev/null ; done
#1748117026
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service  >/dev/null 2>&1; done
#1748117473
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service  >/dev/null; done
#1748118030
rm %2
#1748118034
rm accounts_service 
#1748118062
cat /home/jory/materials/week_13/problems/2023-SE-02/main.c
#1748118111
../../finder.sh 2023-SE-02
#1748118115
../../finder.sh 2023-SE-02 | grep "tests"
#1748118119
../../finder.sh 2023-SE-02 | grep "test"
#1748120275
cp data-orig.bin data.bin
#1748120279
car data.bin 
#1748120291
./main data.bin comparator.bin 
#1748120315
xxd data.bin 
#1748120391
cp /srv/fmi-os/data/03-c/2022-SE-01/data-orig.bin . 
#1748120408
xxd data.bin \
#1748120412
./main data-orig.bin comparator.bin 
#1748120417
xxd data-orig.bin 
#1748120468
лс 
#1748120605
cd 98/
#1748120961
../../finder.sh 2022-SE-01 
#1748120981
cat /home/students/s0600305/2022-SE-01/main.c
#1748121054
rm README.txt 
#1748122013
mkdir test
#1748122048
mkdir found
#1748122062
cp ../../Makefile .
#1748122172
cd test/found/main.c
#1748122180
cd test/found/main
#1748122182
cd test/found/
#1748122202
./main test/found/main
#1748122206
./main test/found/main.c
#1748122325
./main test/found/main 
#1748122378
cd f
#1748122381
cd found/
#1748122403
cd ../../
#1748122407
./test/found/main 
#1748122428
mkdir forever
#1748122430
cd forever/
#1748122492
./main ./test/forever/main 
#1748122518
./main ./test/found/main 
#1748122526
./main ./test/found/main ./test/forever/main 
#1748123174
cd 118
#1748123810
./main ./test/forever/main ./test/found/main 
#1748123823
./main ./test/forever/main ./test/forever/main 
#1748123861
cd test/
#1748123866
mkdir segfault
#1748123867
cd segfault/
#1748123875
cp ../../Makefile . 
#1748123983
./main 
#1748123998
./main ./test/segfault/main 
#1748124008
./main ./test/segfault/main ./test/forever/main 
#1748124021
./main ./test/segfault/main ./test/found/main 
#1748124278
kill 2359
#1748124282
ps
#1748124429
maek 
#1748124456
ps -u s0600302 
#1748124461
pskill -u s0600302 
#1748124464
pkill -u s0600302 
#1748123998
./main ./test/segfault/main 
#1748124008
./main ./test/segfault/main ./test/forever/main 
#1748124021
./main ./test/segfault/main ./test/found/main 
#1748124278
kill 2359
#1748124282
ps
#1748124429
maek 
#1748124456
ps -u s0600302 
#1748124461
pskill -u s0600302 
#1748124464
pkill -u s0600302 
#1748124498
./main ./test/forever/main ./test/forever/main ./test/found/main 
#1748124586
los 
#1748124461
pskill -u s0600302 
#1748124464
pkill -u s0600302 
#1748126468
./list-logged.sh 
#1748168635
cd 118/
#1748168697
cd 117/
#1748168727
cd 116/
#1748168738
make
#1748168742
./main 3 50
#1748168744
./main 3 30
#1748168747
./main 3 25
#1748168749
./main 3 14
#1748168764
./main 2 3
#1748168767
./main 2 2
#1748168769
./main 2 1
#1748168777
./main 2 5
#1748168780
./main 2 4
#1748168782
./main 2 6
#1748168785
./main 2 7
#1748168788
./main 2 8
#1748168797
./main 2 9
#1748168801
./main 2 11
#1748168806
./main 2 12
#1748168809
./main 2 14
#1748168820
./main 2 13
#1748169012
./main 3 3 
#1748169182
./main 3 7
#1748169184
./main 3 8
#1748169186
./main 3 1
#1748169188
./main 3 2
#1748169189
./main 3 3
#1748169191
./main 3 4
#1748169192
./main 3 5
#1748169193
./main 3 6
#1748169220
./main 8 8 
#1748169224
./main 8 7
#1748169227
./main 7 8
#1748169802
cd ../
#1748169808
./todo_finder.sh 
#1748169837
vim todo_finder.sh 
#1748169888
./todo_finder.sh notebook-exercises/
#1748169922
cd notebook-exercises/
#1748170289
mkdir 119
#1748170291
cd 119/
#1748170296
cp ../118/Makefile . 
#1748171393
../../finder.sh 2024-SE-01
#1748171410
cp /srv/sample-data/04-c/2024-SE-01/accounts_service . 
#1748171414
cp /srv/sample-data/04-c/2024-SE-01/README.txt . 
#1748171774
man 2 strtol 
#1748171776
man strtol 
#1748171821
man 2 wait 
#1748171884
clear
#1748172616
vim main.cvim main.c
#1748172708
cat result.bin 
#1748173117
./accounts_service 
#1748174313
vim main.c 
#1748174329
vi main.c
#1748174420
rm result.bin 
#1748174426
xxd result.bin 
#1748174442
cat README.txt 
#1748174490
vim main.c
#1748174505
make 
#1748174554
./main ./accounts_service 50 result.bin
#1748174560
./accounts_service < result.bin 
#1748174565
ps 
#1748174568
kill -l "${?}"
#1748174572
cd ../ 
#1748174945
mkdir 120
#1748174947
cd 120 
#1748174948
ls
#1748174958
cp ../119/Makefile . 
#1748174958
ls 
#1748117019
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service  >/dev/null ; done
#1748117026
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service  >/dev/null 2>&1; done
#1748117473
for i in {1..1}; do head -c /dev/urandom  | ./accounts_service  >/dev/null; done
#1748118030
rm %2
#1748118034
rm accounts_service 
#1748118062
cat /home/jory/materials/week_13/problems/2023-SE-02/main.c
#1748118111
../../finder.sh 2023-SE-02
#1748118115
../../finder.sh 2023-SE-02 | grep "tests"
#1748118119
../../finder.sh 2023-SE-02 | grep "test"
#1748120275
cp data-orig.bin data.bin
#1748120279
car data.bin 
#1748120291
./main data.bin comparator.bin 
#1748120315
xxd data.bin 
#1748120391
cp /srv/fmi-os/data/03-c/2022-SE-01/data-orig.bin . 
#1748120408
xxd data.bin \
#1748120412
./main data-orig.bin comparator.bin 
#1748120417
xxd data-orig.bin 
#1748120605
cd 98/
#1748120961
../../finder.sh 2022-SE-01 
#1748120981
cat /home/students/s0600305/2022-SE-01/main.c
#1748121054
rm README.txt 
#1748122013
mkdir test
#1748122048
mkdir found
#1748122062
cp ../../Makefile .
#1748122172
cd test/found/main.c
#1748122180
cd test/found/main
#1748122182
cd test/found/
#1748122202
./main test/found/main
#1748122206
./main test/found/main.c
#1748122325
./main test/found/main 
#1748122378
cd f
#1748122381
cd found/
#1748122403
cd ../../
#1748122407
./test/found/main 
#1748122428
mkdir forever
#1748122430
cd forever/
#1748122492
./main ./test/forever/main 
#1748122518
./main ./test/found/main 
#1748122526
./main ./test/found/main ./test/forever/main 
#1748123810
./main ./test/forever/main ./test/found/main 
#1748123823
./main ./test/forever/main ./test/forever/main 
#1748123861
cd test/
#1748123866
mkdir segfault
#1748123867
cd segfault/
#1748123875
cp ../../Makefile . 
#1748123983
./main 
#1748123998
./main ./test/segfault/main 
#1748124008
./main ./test/segfault/main ./test/forever/main 
#1748124021
./main ./test/segfault/main ./test/found/main 
#1748124278
kill 2359
#1748124282
ps
#1748124456
ps -u s0600302 
#1748124461
pskill -u s0600302 
#1748124464
pkill -u s0600302 
#1748123998
./main ./test/segfault/main 
#1748124008
./main ./test/segfault/main ./test/forever/main 
#1748124021
./main ./test/segfault/main ./test/found/main 
#1748124278
kill 2359
#1748124282
ps
#1748124456
ps -u s0600302 
#1748124461
pskill -u s0600302 
#1748124464
pkill -u s0600302 
#1748124498
./main ./test/forever/main ./test/forever/main ./test/found/main 
#1748124586
los 
#1748124461
pskill -u s0600302 
#1748124464
pkill -u s0600302 
#1748168727
cd 116/
#1748168738
make
#1748168742
./main 3 50
#1748168744
./main 3 30
#1748168747
./main 3 25
#1748168749
./main 3 14
#1748168764
./main 2 3
#1748168767
./main 2 2
#1748168769
./main 2 1
#1748168777
./main 2 5
#1748168780
./main 2 4
#1748168782
./main 2 6
#1748168785
./main 2 7
#1748168788
./main 2 8
#1748168797
./main 2 9
#1748168801
./main 2 11
#1748168806
./main 2 12
#1748168809
./main 2 14
#1748168820
./main 2 13
#1748169012
./main 3 3 
#1748169182
./main 3 7
#1748169184
./main 3 8
#1748169186
./main 3 1
#1748169188
./main 3 2
#1748169189
./main 3 3
#1748169191
./main 3 4
#1748169192
./main 3 5
#1748169193
./main 3 6
#1748169220
./main 8 8 
#1748169224
./main 8 7
#1748169227
./main 7 8
#1748169808
./todo_finder.sh 
#1748169837
vim todo_finder.sh 
#1748169888
./todo_finder.sh notebook-exercises/
#1748170289
mkdir 119
#1748170296
cp ../118/Makefile . 
#1748171393
../../finder.sh 2024-SE-01
#1748171410
cp /srv/sample-data/04-c/2024-SE-01/accounts_service . 
#1748171414
cp /srv/sample-data/04-c/2024-SE-01/README.txt . 
#1748171774
man 2 strtol 
#1748171776
man strtol 
#1748171821
man 2 wait 
#1748171884
clear
#1748172616
vim main.cvim main.c
#1748173117
./accounts_service 
#1748174329
vi main.c
#1748174554
./main ./accounts_service 50 result.bin
#1748174565
ps 
#1748174568
kill -l "${?}"
#1748174945
mkdir 120
#1748174947
cd 120 
#1748174948
ls
#1748174958
cp ../119/Makefile . 
#1748187313
who
#1748187315
./list-logged.sh 
#1748187319
cd 104
#1748187322
cd notebook-exercises/
#1748187331
ls result.bin 
#1748187333
cat result.bin 
#1748187368
../../finder.sh 2024-SE-02
#1748188195
vim amin.c
#1748189224
vim main.c 
#1748189308
rm result.bin 
#1748190197
cd 107/
#1748190243
cd 103/
#1748190467
cd 120/
#1748190510
cd 104/
#1748190512
./main /srv/sample-data/03-c/2024-SE-02/input.bin result.bin
#1748190517
xxd /srv/sample-data/03-c/2024-SE-02/input.bin
#1748190569
maek 
#1748190570
make 
#1748190766
лс 
#1748190859
cd 118
#1748190867
cd 117/
#1748190902
cd ../
#1748190903
cd 118/
#1748190907
cd ../ 
#1748190908
cd 119/
#1748190919
./main 50 accounts_service 
#1748190936
ls 
#1748190941
./main 50 accounts_service result.bin 
#1748190945
vim main.c
#1748190968
cat README.txt 
#1748190977
./main ./accounts_service 50 result.bin 
#1748190980
xxd result.bin 
#1748190987
./accounts_service < result.bin 
#1748190977
./main ./accounts_service 50 result.bin 
#1748190980
xxd result.bin 
#1748190987
./accounts_service < result.bin 
#1748199974
./lits
#1748199976
./list-logged.sh 
#1748200001
who 
#1748200034
cls 
#1748200040
cd notebook-exercises/
#1748200044
cd 120/
#1748200045
ls 
#1748200049
vim main.c
#1748187319
cd 104
#1748187331
ls result.bin 
#1748187333
cat result.bin 
#1748187368
../../finder.sh 2024-SE-02
#1748188195
vim amin.c
#1748189224
vim main.c 
#1748189308
rm result.bin 
#1748190197
cd 107/
#1748190243
cd 103/
#1748190510
cd 104/
#1748190512
./main /srv/sample-data/03-c/2024-SE-02/input.bin result.bin
#1748190517
xxd /srv/sample-data/03-c/2024-SE-02/input.bin
#1748190569
maek 
#1748190766
лс 
#1748190859
cd 118
#1748190867
cd 117/
#1748190902
cd ../
#1748190903
cd 118/
#1748190907
cd ../ 
#1748190908
cd 119/
#1748190919
./main 50 accounts_service 
#1748190941
./main 50 accounts_service result.bin 
#1748190968
cat README.txt 
#1748190977
./main ./accounts_service 50 result.bin 
#1748190980
xxd result.bin 
#1748190987
./accounts_service < result.bin 
#1748190977
./main ./accounts_service 50 result.bin 
#1748190980
xxd result.bin 
#1748190987
./accounts_service < result.bin 
#1748199974
./lits
#1748199976
./list-logged.sh 
#1748200001
who 
#1748200034
cls 
#1748202597
cd notebook-exercises/
#1748202601
cd 120/
#1748203924
man 2 fork 
#1748204204
man 2 wait 
#1748204216
../../finder.sh  2024-SE-02
#1748204229
..//srv/sample-data/04-c/2024-SE-02/bravo
#1748204231
/srv/sample-data/04-c/2024-SE-02/bravo
#1748204245
/srv/sample-data/04-c/2024-SE-02/charlie
#1748204250
/srv/sample-data/04-c/2024-SE-02/signal
#1748204272
cp /srv/sample-data/04-c/2024-SE-02/README.md . 
#1748204282
cp /srv/sample-data/04-c/2024-SE-02/alpha . 
#1748204290
cat /srv/sample-data/04-c/2024-SE-02/signal . 
#1748204302
cp /srv/sample-data/04-c/2024-SE-02/signal . 
#1748204323
cp /srv/sample-data/04-c/2024-SE-02/bravo . 
#1748204332
./main alpha bravo 
#1748204338
./main alpha bravo bravo 
#1748204348
ps 
#1748204352
./main alpha
#1748204367
./alpha 
#1748204370
vim alpha 
#1748204388
./main bravo 
#1748204391
vim rba
#1748204397
rm bravo 
#1748204399
rm alpha 
#1748204405
rm signal 
#1748204442
rm rba 
#1748204445
cat README.md 
#1748204447
rm README.md 
#1748204498
ls 
#1748204597
./main cat
#1748204603
./main echo 
#1748204637
vim main.c
#1748204643
make 
#1748204648
./main echo
#1748190867
cd 117/
#1748190902
cd ../
#1748190903
cd 118/
#1748190907
cd ../ 
#1748190908
cd 119/
#1748190919
./main 50 accounts_service 
#1748190941
./main 50 accounts_service result.bin 
#1748190968
cat README.txt 
#1748190977
./main ./accounts_service 50 result.bin 
#1748190980
xxd result.bin 
#1748190987
./accounts_service < result.bin 
#1748190977
./main ./accounts_service 50 result.bin 
#1748190980
xxd result.bin 
#1748190987
./accounts_service < result.bin 
#1748199974
./lits
#1748200034
cls 
#1748203924
man 2 fork 
#1748204216
../../finder.sh  2024-SE-02
#1748204229
..//srv/sample-data/04-c/2024-SE-02/bravo
#1748204245
/srv/sample-data/04-c/2024-SE-02/charlie
#1748204250
/srv/sample-data/04-c/2024-SE-02/signal
#1748204272
cp /srv/sample-data/04-c/2024-SE-02/README.md . 
#1748204282
cp /srv/sample-data/04-c/2024-SE-02/alpha . 
#1748204290
cat /srv/sample-data/04-c/2024-SE-02/signal . 
#1748204302
cp /srv/sample-data/04-c/2024-SE-02/signal . 
#1748204323
cp /srv/sample-data/04-c/2024-SE-02/bravo . 
#1748204332
./main alpha bravo 
#1748204338
./main alpha bravo bravo 
#1748204352
./main alpha
#1748204367
./alpha 
#1748204370
vim alpha 
#1748204388
./main bravo 
#1748204391
vim rba
#1748204397
rm bravo 
#1748204399
rm alpha 
#1748204405
rm signal 
#1748204442
rm rba 
#1748204445
cat README.md 
#1748204447
rm README.md 
#1748204597
./main cat
#1748204668
ps aux 
#1748204687
cd 120
#1748204761
ulimit
#1748204764
./main echo
#1748204772
s
#1748204848
ps 
#1748204869
./main 1
#1748205018
./main echo 
#1748205037
./main find
#1748205054
../../finder.sh 2024-SE-02
#1748205069

#1748205104
./main /srv/sample-data/04-c/2024-SE-02/signal
#1748205113
./main /srv/sample-data/04-c/2024-SE-02/charlie 
#1748205116
./main /srv/sample-data/04-c/2024-SE-02/charlie
#1748205122
./main /srv/sample-data/04-c/2024-SE-02/bravo 
#1748205132
man 2 wait 
#1748205819
./list
#1748205824
cd ../../
#1748205825
./list-logged.sh 
#1748205828
who 
#1748205840
/srv/sample-data/04-c/2024-SE-02/bravo
#1748205869
cd notebook-exercises/
#1748205877
cd 120/
#1748206014
./main /srv/sample-data/04-c/2024-SE-02/bravo
#1748206034
./main /srv/sample-data/04-c/2024-SE-02/bravo /srv/sample-data/04-c/2024-SE-02/bravo
#1748206080
./main /srv/sample-data/04-c/2024-SE-02/bravo /srv/sample-data/04-c/2024-SE-02/bravo /srv/sample-data/04-c/2024-SE-02/bravo
#1748206098
vim main.c
#1748206106
maek 
#1748206109
majke 
#1748206110
make 
#1748206111
ls 
#1748204869
./main 1
#1748205018
./main echo 
#1748205037
./main find
#1748205054
../../finder.sh 2024-SE-02
#1748205104
./main /srv/sample-data/04-c/2024-SE-02/signal
#1748205113
./main /srv/sample-data/04-c/2024-SE-02/charlie 
#1748205116
./main /srv/sample-data/04-c/2024-SE-02/charlie
#1748205122
./main /srv/sample-data/04-c/2024-SE-02/bravo 
#1748205132
man 2 wait 
#1748205824
cd ../../
#1748205840
/srv/sample-data/04-c/2024-SE-02/bravo
#1748206014
./main /srv/sample-data/04-c/2024-SE-02/bravo
#1748206106
maek 
#1748206109
majke 
#1748208083
cd notebook-exercises/
#1748208086
cd 120/
#1748208087
ls \
#1748208205
./main /srv/sample-data/04-c/2024-SE-02/bravo /srv/sample-data/04-c/2024-SE-02/bravo
#1748208302
ls
#1748208308
./main /srv/sample-data/04-c/2024-SE-02/bravo /srv/sample-data/04-c/2024-SE-02/bravo /srv/sample-data/04-c/2024-SE-02/bravo\
#1748208329
ls 
#1748208341
echo 12 
#1748208352
vim main.c
#1748208374
make 
#1748208395
clear
#1748208399
./main /srv/sample-data/04-c/2024-SE-02/bravo /srv/sample-data/04-c/2024-SE-02/bravo /srv/sample-data/04-c/2024-SE-02/bravo
#1748208411
./list
#1748208414
cd ../
#1748208416
./list-logged.sh 
#1748208422
who 
#1748208422
who 
#1748209972
ls 
#1748209974
cd bote
#1748209976
cd notebook-exercises/
#1748209981
cd 117/
#1748209992
cd ../
#1748209994
cd 116/
#1748209996
vim main.c
#1748210004
./main 3 4 
#1748210007
./main 3 6
#1748210010
./main 3 36
#1748208205
./main /srv/sample-data/04-c/2024-SE-02/bravo /srv/sample-data/04-c/2024-SE-02/bravo
#1748208308
./main /srv/sample-data/04-c/2024-SE-02/bravo /srv/sample-data/04-c/2024-SE-02/bravo /srv/sample-data/04-c/2024-SE-02/bravo\
#1748208341
echo 12 
#1748208395
clear
#1748208399
./main /srv/sample-data/04-c/2024-SE-02/bravo /srv/sample-data/04-c/2024-SE-02/bravo /srv/sample-data/04-c/2024-SE-02/bravo
#1748208411
./list
#1748208414
cd ../
#1748209974
cd bote
#1748209981
cd 117/
#1748209992
cd ../
#1748209994
cd 116/
#1748210004
./main 3 4 
#1748210007
./main 3 6
#1748210010
./main 3 36
#1748287567
./list-logged.sh 
#1748287570
who 
#1748287577
cd notebook-exercises/
#1748287578
ls 
#1748287582
cd 120/
#1748287669
./main echo
#1748287676
vim main.c
#1748287703
make 
#1748287705
echpo 
#1748287707
echo 
#1748287710
ls
#1748287714
./main echo 
#1748287718
./main echo echo
#1748287720
./main echo echo echo 
#1748287737
./main echo echo echo ../118/test/forever/main 
#1748287782
./main  ../118/test/forever/main 
#1748287784
./main  ../118/test/forever/main ../118/test/segfault/main
#1748287789
./main  echo ../118/test/forever/main ../118/test/segfault/main
#1748288338
./main echo echo echo ../118/test/forever/main
#1748288342
./main echo echo echo ../118/test/forever/main ../118/test/segfault/main 
#1748288351
./main echo echo echo ../118/test/forever/main ецхо
#1748288355
./main echo echo echo ../118/test/forever/main echo
#1748288367
./main echo echo echo ../118/test/segfault/main echo
#1748288395
./main echo   ../118/test/segfault/main echo
#1748288399
./main echo  echo  ../118/test/segfault/main echo
#1748288405
./main echo echo  ../118/test/segfault/main echo
#1748288411
./main echo echo  ../118/test/segfault/main
#1748288418
./main ../118/test/segfault/main
#1748288516
./main ../118/test/segfault/main ../118/test/found/main 
#1748288517
пс 
#1748288519
ps 
#1748288528
pkill -u s0600302 
#1748287718
./main echo echo
#1748287720
./main echo echo echo 
#1748287737
./main echo echo echo ../118/test/forever/main 
#1748287782
./main  ../118/test/forever/main 
#1748287784
./main  ../118/test/forever/main ../118/test/segfault/main
#1748287789
./main  echo ../118/test/forever/main ../118/test/segfault/main
#1748288338
./main echo echo echo ../118/test/forever/main
#1748288342
./main echo echo echo ../118/test/forever/main ../118/test/segfault/main 
#1748288351
./main echo echo echo ../118/test/forever/main ецхо
#1748288355
./main echo echo echo ../118/test/forever/main echo
#1748288367
./main echo echo echo ../118/test/segfault/main echo
#1748288395
./main echo   ../118/test/segfault/main echo
#1748288399
./main echo  echo  ../118/test/segfault/main echo
#1748288405
./main echo echo  ../118/test/segfault/main echo
#1748288411
./main echo echo  ../118/test/segfault/main
#1748288418
./main ../118/test/segfault/main
#1748288516
./main ../118/test/segfault/main ../118/test/found/main 
#1748288517
пс 
#1748288528
pkill -u s0600302 
#1748288540
cd notebook-exercises/
#1748288562
лс 
#1748288567
cd note
#1748288593
./main echo echo 
#1748288684
cd ../ 
#1748288685
cd 110/
#1748288690
cat run.log 
#1748288802
cd 120
#1748288804
cd ../
#1748288805
cd 120/
#1748289160
ls 
#1748289177
vim main.c
#1748289217
make 
#1748289220
./main echo echo ../118/test/forever/main 
#1748289223
ps 
#1748289278
pskill ls 
#1748289284
pskill -u s0600302
#1748289287
pkill -u s0600302
#1748288342
./main echo echo echo ../118/test/forever/main ../118/test/segfault/main 
#1748288351
./main echo echo echo ../118/test/forever/main ецхо
#1748288355
./main echo echo echo ../118/test/forever/main echo
#1748288367
./main echo echo echo ../118/test/segfault/main echo
#1748288395
./main echo   ../118/test/segfault/main echo
#1748288399
./main echo  echo  ../118/test/segfault/main echo
#1748288405
./main echo echo  ../118/test/segfault/main echo
#1748288411
./main echo echo  ../118/test/segfault/main
#1748288418
./main ../118/test/segfault/main
#1748288516
./main ../118/test/segfault/main ../118/test/found/main 
#1748288517
пс 
#1748288528
pkill -u s0600302 
#1748288562
лс 
#1748288567
cd note
#1748288593
./main echo echo 
#1748288802
cd 120
#1748289220
./main echo echo ../118/test/forever/main 
#1748289278
pskill ls 
#1748289284
pskill -u s0600302
#1748289287
pkill -u s0600302
#1748289293
cd seminars/
#1748289296
cd ../
#1748289413
./list-logged.sh 
#1748289459
cd notebook-exercises/
#1748289462
cd 120/
#1748289469
./main echo echo ../118/test/forever/main
#1748289496
./main echo echo ../118/test/forever/main ../118/test/segfault/main 
#1748289503
./main echo echo ../118/test/forever/main ../118/test/segfault/main echo
#1748289505
ps 
#1748289704
maek 
#1748289706
make 
#1748289844
cd 110/
#1748289980
cat run.log 
#1748290014
vim main.c
#1748290498
?
#1748290502
$?
#1748290508
sleep 3
#1748290518
echo $?
#1748298180
list 
#1748298184
cd 120 
#1748298186
vim main.c 
#1748298607
ls 
#1748298612
cd ../ 
#1748298613
./list
#1748298618
../list-logged.sh 
#1748298620
who 
#1748298650
who | awk -F " " '{print $1}'
#1748298652
who | awk -F " " '{print $1}' |
#1748298692
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd awk -F ":"
#1748298695
cat /etc/passwd 
#1748298737
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd awk -F ":" -v "var={}" '{if(var == $1) {print $2}}'
#1748298749
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{if(var == $1) {print $2}}'
#1748298759
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{if(var == $1) {print var}}'
#1748298773
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{print var}'
#1748298779
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var=${}" '{print var}'
#1748299926
wq
#1748299929
exitr 
#1748299931
exit 
#1748300100
tmux -list 
#1748300106
tmux --help 
#1748300118
tmux --list-options
#1748300210
exit 
#1748300253
ls 
#1748300275
exit 
#1748300275
exit 
#1748300324
cd 120/
#1748300327
vim main.c
#1748300337
make 
#1748300339
ls 
#1748300365
exit
#1748300314
ls 
#1748300366
exit 
#1748298692
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd awk -F ":"
#1748298695
cat /etc/passwd 
#1748298737
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd awk -F ":" -v "var={}" '{if(var == $1) {print $2}}'
#1748298749
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{if(var == $1) {print $2}}'
#1748298759
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{if(var == $1) {print var}}'
#1748298773
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{print var}'
#1748298779
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var=${}" '{print var}'
#1748298927
ls
#1748298983
cd 120
#1748299004
ps 
#1748299006
./main ../118/test/segfault/
#1748299014
./main ../118/test/forever/
#1748299446
cd ../ 
#1748299453
mkdir char_room
#1748299458
rm char_room/
#1748299462
rmdir char_room/
#1748299466
mkdir chat_room
#1748299471
cd chat_room/
#1748299472
ls 
#1748298618
../list-logged.sh 
#1748298620
who 
#1748298650
who | awk -F " " '{print $1}'
#1748298652
who | awk -F " " '{print $1}' |
#1748298692
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd awk -F ":"
#1748298695
cat /etc/passwd 
#1748298737
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd awk -F ":" -v "var={}" '{if(var == $1) {print $2}}'
#1748298749
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{if(var == $1) {print $2}}'
#1748298759
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{if(var == $1) {print var}}'
#1748298773
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{print var}'
#1748298779
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var=${}" '{print var}'
#1748298952
rm main.c `
#1748298954
rm main.c 
#1748298957
cd 120/
#1748299090
./main ../118/test/forever/
#1748299093
./main 
#1748299120
make 
#1748299122
./main 1
#1748299145
ls 
#1748299147
./main ../118/test/segfault/
#1748299150
./main ../118/test/segfault/main 
#1748299156
./main ../118/test/forever/main 
#1748299161
vim main.c
#1748288395
./main echo   ../118/test/segfault/main echo
#1748288399
./main echo  echo  ../118/test/segfault/main echo
#1748288405
./main echo echo  ../118/test/segfault/main echo
#1748288411
./main echo echo  ../118/test/segfault/main
#1748288418
./main ../118/test/segfault/main
#1748288516
./main ../118/test/segfault/main ../118/test/found/main 
#1748288517
пс 
#1748288528
pkill -u s0600302 
#1748287718
./main echo echo
#1748287720
./main echo echo echo 
#1748287737
./main echo echo echo ../118/test/forever/main 
#1748287782
./main  ../118/test/forever/main 
#1748287784
./main  ../118/test/forever/main ../118/test/segfault/main
#1748287789
./main  echo ../118/test/forever/main ../118/test/segfault/main
#1748288338
./main echo echo echo ../118/test/forever/main
#1748288342
./main echo echo echo ../118/test/forever/main ../118/test/segfault/main 
#1748288351
./main echo echo echo ../118/test/forever/main ецхо
#1748288355
./main echo echo echo ../118/test/forever/main echo
#1748288367
./main echo echo echo ../118/test/segfault/main echo
#1748288395
./main echo   ../118/test/segfault/main echo
#1748288399
./main echo  echo  ../118/test/segfault/main echo
#1748288405
./main echo echo  ../118/test/segfault/main echo
#1748288411
./main echo echo  ../118/test/segfault/main
#1748288418
./main ../118/test/segfault/main
#1748288516
./main ../118/test/segfault/main ../118/test/found/main 
#1748288517
пс 
#1748288528
pkill -u s0600302 
#1748288562
лс 
#1748288567
cd note
#1748288593
./main echo echo 
#1748288802
cd 120
#1748289220
./main echo echo ../118/test/forever/main 
#1748289278
pskill ls 
#1748289284
pskill -u s0600302
#1748289293
cd seminars/
#1748289296
cd ../
#1748289413
./list-logged.sh 
#1748289459
cd notebook-exercises/
#1748289462
cd 120/
#1748289469
./main echo echo ../118/test/forever/main
#1748289496
./main echo echo ../118/test/forever/main ../118/test/segfault/main 
#1748289503
./main echo echo ../118/test/forever/main ../118/test/segfault/main echo
#1748289704
maek 
#1748289706
make 
#1748289844
cd 110/
#1748289980
cat run.log 
#1748290014
vim main.c
#1748290498
?
#1748290502
$?
#1748290508
sleep 3
#1748290518
echo $?
#1748298180
list 
#1748298184
cd 120 
#1748298186
vim main.c 
#1748298612
cd ../ 
#1748298613
./list
#1748298618
../list-logged.sh 
#1748298650
who | awk -F " " '{print $1}'
#1748298652
who | awk -F " " '{print $1}' |
#1748298692
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd awk -F ":"
#1748298695
cat /etc/passwd 
#1748298737
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd awk -F ":" -v "var={}" '{if(var == $1) {print $2}}'
#1748298749
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{if(var == $1) {print $2}}'
#1748298759
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{if(var == $1) {print var}}'
#1748298773
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{print var}'
#1748298779
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var=${}" '{print var}'
#1748298798
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{print var}' /etc/passwd 
#1748298823
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $2}}' /etc/passwd 
#1748298826
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $3}}' /etc/passwd 
#1748298828
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $4}}' /etc/passwd 
#1748298831
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $5}}' /etc/passwd 
#1748298838
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $5}}' /etc/passwd | cut -d "," -f1
#1748298842
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $5}}' /etc/passwd | cut -d "," -f1 | sort
#1748298878
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $5}}' /etc/passwd | cut -d "," -f2 | sort
#1748298880
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $5}}' /etc/passwd | cut -d "," -f1  | sort
#1748298892
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $5}}' /etc/passwd | cut -d "," -f1  | sort | tr -s "\n"
#1748298896
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $5}}' /etc/passwd | cut -d "," -f1  | sort |
#1748298897
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $5}}' /etc/passwd | cut -d "," -f1  | sort 
#1748298913
who 
#1748299646
tmux list-keys 
#1748299679
vim ~/.tmux.conf
#1748299867
nano nano ~/.tmux.conf
#1748299919
nano
#1748299941
bind -n C-WheelUp resize-pane -Z
#1748299979
ls -a 
#1748300008
vi ~/.tmux.conf
#1748300218
vim ~/.tmux.conf 
#1748300246
tmux
#1748300277
tmux source-file ~/.tmux.conf
#1748300288
tmux -V
#1748300305
tmux 
#1748300374
tmuxx kill-server 
#1748300381
tmux server-kill 
#1748300385
tmux --list 
#1748300389
help tmxu 
#1748300400
help tmux
#1748300411
man -k tmux 
#1748300428
tmux kill-server
#1748300429
ls 
#1748300431
ps 
#1748300437
who
#1748300457
pkill -u s0600302
#1748300246
tmux
#1748300277
tmux source-file ~/.tmux.conf
#1748300288
tmux -V
#1748300305
tmux 
#1748300374
tmuxx kill-server 
#1748300381
tmux server-kill 
#1748300385
tmux --list 
#1748300389
help tmxu 
#1748300400
help tmux
#1748300411
man -k tmux 
#1748300428
tmux kill-server
#1748300437
who
#1748300457
pkill -u s0600302
#1748300462
ps 
#1748300721
clear
#1748300728
cd chat_room/
#1748300729
ls 
#1748301975
echo -n "Loading..."
#1748301975
sleep 1
#1748301976
echo -ne "\rDone!     \n"
#1748302002
tput
#1748302009
echo "First line"
#1748302009
echo "Second line"
#1748302009
tput cuu1  # cursor up 1 line
#1748302009
tput el    # clear line
#1748302011
echo "Replaced first line"
#1748302046
vim main.c
#1748339215
cd 120
#1748339218
cd notebook-exercises/
#1748339219
cd 120/
#1748339223
vim main.c 
#1748339248
tmux 
#1748344401
./list-logged.sh 
#1748344417
vi ~/.tmux.conf 
#1748344442
tmux source-file ~/.tmux.conf
#1748344444
ls 
#1748344450
exit
#1748344456
64;97;27M65;97;27M64;97;27M
#1748344458
ls 
#1748344576
set -f mouse off
#1748344582
exit
#1748344576
set -f mouse off
#1748344582
exit
#1748344608
vim ~/.tmux.conf 
#1748344644
tmux source-file ~/.tmux.conf 
#1748344768
vim 2;119;44M2;119;44m
#1748344819
bind -n WheelUpPane send-keys '!!' Enter
#1748344880
0;161;50M32;157;50M32;154;50M32;151;50M32;149;50M32;144;50M32;138;50M32;132;50M32;125;50M32;120;50M32;113;50M32;106;50M32;98;50M32;92;50M32;87;50M32;81;50M32;75;50M32;70;50M32;65;50M32;63;50M32;61;50M32;59;50M32;58;50M32;57;50M32;56;50M32;56;51M32;55;51M32;54;51M32;53;51M32;51;51M32;50;51M32;49;51M32;48;51M32;47;51M32;45;51M32;44;51M32;43;51M32;42;51M0;42;51m0;2;48M32;2;48M32;3;48M32;4;48M32;5;48M32;6;48M32;7;48M32;8;48M32;9;48M32;10;48M32;11;48M32;12;48M32;13;48M32;14;48M32;15;48M32;16;48M32;17;48M32;18;40;167;48m
#1748344897
72;141;42M72;141;42M72;141;42M72;97;33M72;96;32M72;96;32M73;94;31M73;94;31M73;94;31M73;94;31M0;180;20m
#1748344948
vim .bash_profile 
#1748344958
vim .bashrc 
#1748345000
echo $TERN
#1748345002
echo $TERm
#1748345005
echo $TERM
#1748345053
echo -e "\e[?10001"
#1748345071
echo -e "\e[?10061"
#1748345226
bind -P | grep -i mouse
#1748345246
reset
#1748345248
ls 
#1748345254
exit 
#1748339254
tmux
#1748339260
ps 
#1748339263
tmux 
#1748339275
vim main.c 
#1748345246
reset
#1748345254

#1748345364
ecgo -e '\e[?10001\e[?10061\e[?10021'
#1748345368
echo -e '\e[?10001\e[?10061\e[?10021'
#1748345399
tmux kill-server 
#1748345404
ls 
#1748345406
exit 
#1748345368
echo -e '\e[?10001\e[?10061\e[?10021'
#1748345399
tmux kill-server 
#1748345426
rm .tmux.conf 
#1748345432
ls 
#1748345448
cd seminars/
#1748345450
ls -a 
#1748345454
cd ../ 
#1748345461
reset
#1748345464
64;90;40M65;90;40M65;90;40M
#1748345465
reset 
#1748345466
exit 
#1748345472
ls -a 
#1748345482
vim main.c
#1748345668
vim ~/.tmux.conf
#1748345842
cat /etc/inputrc 
#1748345859
bind -r /etc/init.d/
#1748345865
reload
#1748345870
exit
#1748345891
bind -f /etc/init.d/
#1748345894
bind -f /etc/inputrc 
#1748345899
reload
#1748345909
bind -r
#1748345954
exit
#1748345967
bind -f /etc/inputrc 
#1748345969
exit 
#1748346003
ls 
#1748289287
pkill -u s0600302
#1748289293
cd seminars/
#1748289459
cd notebook-exercises/
#1748289462
cd 120/
#1748289469
./main echo echo ../118/test/forever/main
#1748289496
./main echo echo ../118/test/forever/main ../118/test/segfault/main 
#1748289503
./main echo echo ../118/test/forever/main ../118/test/segfault/main echo
#1748289844
cd 110/
#1748289980
cat run.log 
#1748290498
?
#1748290502
$?
#1748290508
sleep 3
#1748290518
echo $?
#1748298180
list 
#1748298184
cd 120 
#1748298618
../list-logged.sh 
#1748298620
who 
#1748298650
who | awk -F " " '{print $1}'
#1748298652
who | awk -F " " '{print $1}' |
#1748298692
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd awk -F ":"
#1748298695
cat /etc/passwd 
#1748298737
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd awk -F ":" -v "var={}" '{if(var == $1) {print $2}}'
#1748298749
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{if(var == $1) {print $2}}'
#1748298759
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{if(var == $1) {print var}}'
#1748298773
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{print var}'
#1748298779
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var=${}" '{print var}'
#1748299926
wq
#1748299929
exitr 
#1748299931
exit 
#1748300100
tmux -list 
#1748300106
tmux --help 
#1748300118
tmux --list-options
#1748300210
exit 
#1748300275
exit 
#1748300275
exit 
#1748300324
cd 120/
#1748300365
exit
#1748300366
exit 
#1748298692
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd awk -F ":"
#1748298695
cat /etc/passwd 
#1748298737
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd awk -F ":" -v "var={}" '{if(var == $1) {print $2}}'
#1748298749
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{if(var == $1) {print $2}}'
#1748298759
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{if(var == $1) {print var}}'
#1748298773
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{print var}'
#1748298779
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var=${}" '{print var}'
#1748298983
cd 120
#1748299006
./main ../118/test/segfault/
#1748299014
./main ../118/test/forever/
#1748299453
mkdir char_room
#1748299458
rm char_room/
#1748299462
rmdir char_room/
#1748299466
mkdir chat_room
#1748298618
../list-logged.sh 
#1748298620
who 
#1748298650
who | awk -F " " '{print $1}'
#1748298652
who | awk -F " " '{print $1}' |
#1748298692
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd awk -F ":"
#1748298695
cat /etc/passwd 
#1748298737
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd awk -F ":" -v "var={}" '{if(var == $1) {print $2}}'
#1748298749
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{if(var == $1) {print $2}}'
#1748298759
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{if(var == $1) {print var}}'
#1748298773
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{print var}'
#1748298779
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var=${}" '{print var}'
#1748298952
rm main.c `
#1748298957
cd 120/
#1748299090
./main ../118/test/forever/
#1748299122
./main 1
#1748299147
./main ../118/test/segfault/
#1748299150
./main ../118/test/segfault/main 
#1748299156
./main ../118/test/forever/main 
#1748288395
./main echo   ../118/test/segfault/main echo
#1748288399
./main echo  echo  ../118/test/segfault/main echo
#1748288405
./main echo echo  ../118/test/segfault/main echo
#1748288411
./main echo echo  ../118/test/segfault/main
#1748288418
./main ../118/test/segfault/main
#1748288516
./main ../118/test/segfault/main ../118/test/found/main 
#1748288517
пс 
#1748288528
pkill -u s0600302 
#1748287718
./main echo echo
#1748287720
./main echo echo echo 
#1748287737
./main echo echo echo ../118/test/forever/main 
#1748287782
./main  ../118/test/forever/main 
#1748287784
./main  ../118/test/forever/main ../118/test/segfault/main
#1748287789
./main  echo ../118/test/forever/main ../118/test/segfault/main
#1748288338
./main echo echo echo ../118/test/forever/main
#1748288342
./main echo echo echo ../118/test/forever/main ../118/test/segfault/main 
#1748288351
./main echo echo echo ../118/test/forever/main ецхо
#1748288355
./main echo echo echo ../118/test/forever/main echo
#1748288367
./main echo echo echo ../118/test/segfault/main echo
#1748288395
./main echo   ../118/test/segfault/main echo
#1748288399
./main echo  echo  ../118/test/segfault/main echo
#1748288405
./main echo echo  ../118/test/segfault/main echo
#1748288411
./main echo echo  ../118/test/segfault/main
#1748288418
./main ../118/test/segfault/main
#1748288516
./main ../118/test/segfault/main ../118/test/found/main 
#1748288517
пс 
#1748288528
pkill -u s0600302 
#1748288562
лс 
#1748288567
cd note
#1748288593
./main echo echo 
#1748288802
cd 120
#1748289220
./main echo echo ../118/test/forever/main 
#1748289278
pskill ls 
#1748289284
pskill -u s0600302
#1748289293
cd seminars/
#1748289459
cd notebook-exercises/
#1748289462
cd 120/
#1748289469
./main echo echo ../118/test/forever/main
#1748289496
./main echo echo ../118/test/forever/main ../118/test/segfault/main 
#1748289503
./main echo echo ../118/test/forever/main ../118/test/segfault/main echo
#1748289844
cd 110/
#1748289980
cat run.log 
#1748290498
?
#1748290502
$?
#1748290508
sleep 3
#1748290518
echo $?
#1748298180
list 
#1748298184
cd 120 
#1748298618
../list-logged.sh 
#1748298650
who | awk -F " " '{print $1}'
#1748298652
who | awk -F " " '{print $1}' |
#1748298692
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd awk -F ":"
#1748298695
cat /etc/passwd 
#1748298737
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd awk -F ":" -v "var={}" '{if(var == $1) {print $2}}'
#1748298749
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{if(var == $1) {print $2}}'
#1748298759
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{if(var == $1) {print var}}'
#1748298773
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var={}" '{print var}'
#1748298779
who | awk -F " " '{print $1}' | xargs -I {} cat /etc/passwd |  awk -F ":" -v "var=${}" '{print var}'
#1748298798
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{print var}' /etc/passwd 
#1748298823
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $2}}' /etc/passwd 
#1748298826
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $3}}' /etc/passwd 
#1748298828
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $4}}' /etc/passwd 
#1748298831
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $5}}' /etc/passwd 
#1748298838
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $5}}' /etc/passwd | cut -d "," -f1
#1748298842
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $5}}' /etc/passwd | cut -d "," -f1 | sort
#1748298878
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $5}}' /etc/passwd | cut -d "," -f2 | sort
#1748298880
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $5}}' /etc/passwd | cut -d "," -f1  | sort
#1748298892
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $5}}' /etc/passwd | cut -d "," -f1  | sort | tr -s "\n"
#1748298896
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $5}}' /etc/passwd | cut -d "," -f1  | sort |
#1748298897
who | awk -F " " '{print $1}' | xargs -I {}  awk -F ":" -v "var={}" '{if(var == $1) {print $5}}' /etc/passwd | cut -d "," -f1  | sort 
#1748298913
who 
#1748299646
tmux list-keys 
#1748299679
vim ~/.tmux.conf
#1748299867
nano nano ~/.tmux.conf
#1748299919
nano
#1748299941
bind -n C-WheelUp resize-pane -Z
#1748299979
ls -a 
#1748300008
vi ~/.tmux.conf
#1748300218
vim ~/.tmux.conf 
#1748300246
tmux
#1748300277
tmux source-file ~/.tmux.conf
#1748300288
tmux -V
#1748300305
tmux 
#1748300374
tmuxx kill-server 
#1748300381
tmux server-kill 
#1748300385
tmux --list 
#1748300389
help tmxu 
#1748300400
help tmux
#1748300411
man -k tmux 
#1748300428
tmux kill-server
#1748300437
who
#1748300457
pkill -u s0600302
#1748300246
tmux
#1748300277
tmux source-file ~/.tmux.conf
#1748300288
tmux -V
#1748300305
tmux 
#1748300374
tmuxx kill-server 
#1748300381
tmux server-kill 
#1748300385
tmux --list 
#1748300389
help tmxu 
#1748300400
help tmux
#1748300411
man -k tmux 
#1748300428
tmux kill-server
#1748300437
who
#1748300457
pkill -u s0600302
#1748300721
clear
#1748301975
echo -n "Loading..."
#1748301975
sleep 1
#1748301976
echo -ne "\rDone!     \n"
#1748302002
tput
#1748302009
echo "First line"
#1748302009
echo "Second line"
#1748302009
tput cuu1  # cursor up 1 line
#1748302009
tput el    # clear line
#1748302011
echo "Replaced first line"
#1748339215
cd 120
#1748339218
cd notebook-exercises/
#1748339219
cd 120/
#1748339248
tmux 
#1748344417
vi ~/.tmux.conf 
#1748344442
tmux source-file ~/.tmux.conf
#1748344450
exit
#1748344456
64;97;27M65;97;27M64;97;27M
#1748344576
set -f mouse off
#1748344582
exit
#1748344576
set -f mouse off
#1748344582
exit
#1748344608
vim ~/.tmux.conf 
#1748344644
tmux source-file ~/.tmux.conf 
#1748344768
vim 2;119;44M2;119;44m
#1748344819
bind -n WheelUpPane send-keys '!!' Enter
#1748344880
0;161;50M32;157;50M32;154;50M32;151;50M32;149;50M32;144;50M32;138;50M32;132;50M32;125;50M32;120;50M32;113;50M32;106;50M32;98;50M32;92;50M32;87;50M32;81;50M32;75;50M32;70;50M32;65;50M32;63;50M32;61;50M32;59;50M32;58;50M32;57;50M32;56;50M32;56;51M32;55;51M32;54;51M32;53;51M32;51;51M32;50;51M32;49;51M32;48;51M32;47;51M32;45;51M32;44;51M32;43;51M32;42;51M0;42;51m0;2;48M32;2;48M32;3;48M32;4;48M32;5;48M32;6;48M32;7;48M32;8;48M32;9;48M32;10;48M32;11;48M32;12;48M32;13;48M32;14;48M32;15;48M32;16;48M32;17;48M32;18;40;167;48m
#1748344897
72;141;42M72;141;42M72;141;42M72;97;33M72;96;32M72;96;32M73;94;31M73;94;31M73;94;31M73;94;31M0;180;20m
#1748344948
vim .bash_profile 
#1748344958
vim .bashrc 
#1748345000
echo $TERN
#1748345002
echo $TERm
#1748345005
echo $TERM
#1748345053
echo -e "\e[?10001"
#1748345071
echo -e "\e[?10061"
#1748345226
bind -P | grep -i mouse
#1748345246
reset
#1748345254
exit 
#1748339254
tmux
#1748339263
tmux 
#1748345246
reset
#1748345364
ecgo -e '\e[?10001\e[?10061\e[?10021'
#1748345368
echo -e '\e[?10001\e[?10061\e[?10021'
#1748345399
tmux kill-server 
#1748345406
exit 
#1748345368
echo -e '\e[?10001\e[?10061\e[?10021'
#1748345399
tmux kill-server 
#1748345426
rm .tmux.conf 
#1748345448
cd seminars/
#1748345450
ls -a 
#1748345461
reset
#1748345464
64;90;40M65;90;40M65;90;40M
#1748345465
reset 
#1748345466
exit 
#1748345472
ls -a 
#1748345668
vim ~/.tmux.conf
#1748345842
cat /etc/inputrc 
#1748345859
bind -r /etc/init.d/
#1748345865
reload
#1748345870
exit
#1748345891
bind -f /etc/init.d/
#1748345894
bind -f /etc/inputrc 
#1748345899
reload
#1748345909
bind -r
#1748345954
exit
#1748345967
bind -f /etc/inputrc 
#1748345969
exit 
#1748380836
rm main.c 
#1748380842
mkdir server
#1748380848
mkdir client
#1748380851
cd server
#1748384471
apropos mutex 
#1748384478
apropos lock 
#1748385271
apropos close mkfifo 
#1748385330
apropos delete named fifo 
#1748387292
cp ../../notebook-exercises/120/Makefile . 
#1748387311
vim asserted.h
#1748387573
man 2 lseek 
#1748387694
man 2 ssize_t
#1748387696
man ssize_t
#1748388442
man 2 flock 
#1748389020
man mkfifo 
#1748389028
man 2 mkfifo 
#1748389035
man 3 mkfifo
#1748389439
cd server/main.c 
#1748389499
cd asserted.h 
#1748389539
man pid_t 
#1748389562
maek 
#1748390152

#1748390240
lks 
#1748390431
cat tmp/__server 
#1748390443
cat database.txt 
#1748390581
cat tmp/
#1748390582
find tmp/
#1748390587
cd tmp/
#1748390595
cat __server 
#1748390603
rm __server 
#1748390609
rm database.txt 
#1748390616
vim main 
#1748390804
cd ../../
#1748390812
rm -r helpers/
#1748390817
rm -r test/
#1748390820
rm -r seminars/
#1748390828
cd chat_room/
#1748390886
mkdir tm
#1748390889
rm -r tm/
#1748390976
mkdir tmp
#1748391032
vim asserted.h 
#1748391241
rm tmp/
#1748391562
make 
#1748391570
rm -r tmp/
#1748391571
mkdir tmp 
#1748391573
./main 
#1748391585
ps 
#1748391598
cp ../server/Makefile 
#1748391600
cp ../server/Makefile  . 
#1748392008
vim ../server/main
#1748392011
vim ../server/main.c
#1748392026
vim main.c 
#1748392141
mkfifo pavel
#1748392142
ls
#1748392144
rm pavel 
#1748392149
cd ../server/
#1748392855
ls 
#1748392860
cd client/
#1748393562
cd ../
#1748393564
cd server/
#1748393565
vim main.c
#1748393984
./list
#1748393985
cd ../ 
#1748393988
./list-logged.sh 
#1748392141
mkfifo pavel
#1748392142
ls
#1748392144
rm pavel 
#1748392149
cd ../server/
#1748393984
./list
#1748393988
./list-logged.sh 
#1748441651
cd chat_room/
#1748441655
cd server/
#1748441658
rm -r tmp/
#1748441663
rm database.txt 
#1748441883
ls 
#1748441999
cd ../
#1748442000
cd client/
#1748442003
vim main.c
#1748442015
cd ../ 
#1748393985
cd ../ 
#1748438996
./list-logged.sh 
#1748439007
cd chat_room/
#1748439008
ls
#1748439012
cd server/
#1748439021
vim main.c
#1748345891
bind -f /etc/init.d/
#1748345894
bind -f /etc/inputrc 
#1748345899
reload
#1748345909
bind -r
#1748345954
exit
#1748345967
bind -f /etc/inputrc 
#1748345969
exit 
#1748380836
rm main.c 
#1748380842
mkdir server
#1748380848
mkdir client
#1748384471
apropos mutex 
#1748384478
apropos lock 
#1748385271
apropos close mkfifo 
#1748385330
apropos delete named fifo 
#1748387292
cp ../../notebook-exercises/120/Makefile . 
#1748387311
vim asserted.h
#1748387573
man 2 lseek 
#1748387694
man 2 ssize_t
#1748387696
man ssize_t
#1748388442
man 2 flock 
#1748389020
man mkfifo 
#1748389028
man 2 mkfifo 
#1748389035
man 3 mkfifo
#1748389439
cd server/main.c 
#1748389499
cd asserted.h 
#1748389539
man pid_t 
#1748389562
maek 
#1748390240
lks 
#1748390431
cat tmp/__server 
#1748390443
cat database.txt 
#1748390581
cat tmp/
#1748390582
find tmp/
#1748390595
cat __server 
#1748390603
rm __server 
#1748390609
rm database.txt 
#1748390616
vim main 
#1748390804
cd ../../
#1748390812
rm -r helpers/
#1748390817
rm -r test/
#1748390820
rm -r seminars/
#1748390886
mkdir tm
#1748390889
rm -r tm/
#1748391032
vim asserted.h 
#1748391241
rm tmp/
#1748391570
rm -r tmp/
#1748391571
mkdir tmp 
#1748391585
ps 
#1748391598
cp ../server/Makefile 
#1748391600
cp ../server/Makefile  . 
#1748392008
vim ../server/main
#1748392026
vim main.c 
#1748392141
mkfifo pavel
#1748392144
rm pavel 
#1748392149
cd ../server/
#1748393984
./list
#1748393988
./list-logged.sh 
#1748392141
mkfifo pavel
#1748392144
rm pavel 
#1748392149
cd ../server/
#1748393984
./list
#1748393988
./list-logged.sh 
#1748441658
rm -r tmp/
#1748441663
rm database.txt 
#1748442226
cd ser
#1748442252
rm "/home/students/s0600302/.local/share/nvim/swap//%home%students%s06003
#1748442257
/home/students/s0600302/.local/share/nvim/swap//%home%students%s06003
#1748442270
rm "/home/students/s0600302/.local/share/nvim/swap//%home%students%s0600302%chat_room%server%main.c.swp"
#1748443287
vim ../server/main.c
#1748443377
vimls 
#1748443379
cleare
#1748443421
vim ../server/main.c 
#1748443868
 make 
#1748443907
qvim main.c
#1748443911
vim mainh.c
#1748444844
cd client/
#1748444846
make 
#1748444852
make
#1748444863
mkdir tmp
#1748444869
cd ../
#1748444875
vim main.c
#1748444893
mkdir server_to_client
#1748444897
mkdir client_to_server
#1748444903
cd server
#1748444924
cd 
#1748444927
cd chat_room/
#1748444931
cd tmp/
#1748444935
find client_to_server/
#1748444938
find server_to_client/
#1748444941
cd ../ 
#1748444942
ls 
#1748444946
cd server/
#1748444947
./main 
#1748444964
rm ../tmp/__server 
#1748444965
ls
#1748444968
tmux 
#1748444931
cd tmp/
#1748444935
find client_to_server/
#1748444938
find server_to_client/
#1748444941
cd ../ 
#1748444946
cd server/
#1748444965
ls
#1748444968
tmux 
#1748509661
rm ../tmp/client_to_server/pavel
#1748509668
rm ../tmp/server_to_client/pavel 
#1748509903
rm ../tmp/__server 
#1748509911
rm ../tmp/server_to_client/pavkata 
#1748509916
rm ../tmp/client_to_server/pavkata 
#1748509922
clear
#1748509927
./main 
#1748509953
ls 
#1748509957
ps 
#1748510036
vim main.c
#1748510343
make 
#1748510350
make
#1748510362
exit
#1748444965
ls
#1748444968
tmux 
#1748509635
cd ../client/
#1748509640
make
#1748509925
clear
#1748509940
./main pavkata
#1748510205
vim main.c 
#1748510365
exit 
#1748510378
ps 
#1748510386
cd ../client/
#1748510387
make 
#1748510394
clear
#1748510439
./main pavel
#1748510511
exit
#1748509940
./main pavkata
#1748510205
vim main.c 
#1748510389
make 
#1748510411
rm ../tmp/__server 
#1748510426
rm ../tmp/client_to_server/pavkata 
#1748510430
rm ../tmp/server_to_client/pavkata 
#1748510432
clear
#1748510435
./main 
#1748510490
ls 
#1748510491
ps 
#1748510515
exit 
#1748510350
make
#1748510362
exit
#1748444965
ls
#1748444968
tmux 
#1748509635
cd ../client/
#1748509640
make
#1748509940
./main pavkata
#1748510205
vim main.c 
#1748510386
cd ../client/
#1748510439
./main pavel
#1748510511
exit
#1748509940
./main pavkata
#1748510205
vim main.c 
#1748511241
rm ../tmp/__server 
#1748511246
rm ../tmp/server_to_client/pavkata 
#1748511251
rm ../tmp/client_to_server/pavkata 
#1748511252
ls 
#1748511253
clear
#1748511255
./main 
#1748511277
vim main.c
#1748511321
ps
#1748511324
make 
#1748511331
ps 
#1748511333
exit 
#1748510491
ps 
#1748510953
cd ../client/
#1748511260
clear
#1748511264
./main pavkata
#1748511334
exit 
#1748511324
make 
#1748510953
cd ../client/
#1748511264
./main pavkata
#1748511357
rm ../tmp/__server 
#1748511363
rm ../tmp/client_to_server/pavkata 
#1748511367
rm ../tmp/server_to_client/pavkata 
#1748511368
ls 
#1748511449
clear
#1748511452
./main 
#1748511494
vim main.c
#1748511498
ps 
#1748511508
exit 
#1748511324
make 
#1748511331
ps 
#1748510491
ps 
#1748510953
cd ../client/
#1748511390
./main pavkata
#1748511414
./main d
#1748511424
cat ../database.txt 
#1748511429
ls 
#1748511437
rm ../tmp/__server 
#1748511463
./main p
#1748511472
cd ../
#1748511474
cd client/
#1748511475
clear
#1748511479
./main pavel
#1748511510
exitr 
#1748511512
exit 
#1748444852
make
#1748444863
mkdir tmp
#1748444893
mkdir server_to_client
#1748444897
mkdir client_to_server
#1748444903
cd server
#1748444924
cd 
#1748444931
cd tmp/
#1748444935
find client_to_server/
#1748444938
find server_to_client/
#1748444941
cd ../ 
#1748444947
./main 
#1748444965
ls
#1748509417
./list-logged.sh 
#1748509422
cd chat_room/
#1748509448
cd client/
#1748509483
cd ../
#1748509485
cd server/
#1748510375
tmux
#1748510516
os 
#1748510526
rm ../tmp/__server 
#1748510533
rm ../tmp/client_to_server/pavel 
#1748510538
rm ../tmp/server_to_client/pavel 
#1748510539
ls 
#1748510541
vim main.c
#1748510942
make 
#1748511338
tmux 
#1748511515
ps aux 
#1748511540
ps 
#1748511546
pkill -u s0600302
#1748390889
rm -r tm/
#1748390976
mkdir tmp
#1748391032
vim asserted.h 
#1748391241
rm tmp/
#1748391570
rm -r tmp/
#1748391571
mkdir tmp 
#1748391585
ps 
#1748391598
cp ../server/Makefile 
#1748391600
cp ../server/Makefile  . 
#1748392008
vim ../server/main
#1748392011
vim ../server/main.c
#1748392026
vim main.c 
#1748392141
mkfifo pavel
#1748392142
ls
#1748392144
rm pavel 
#1748392149
cd ../server/
#1748392860
cd client/
#1748393562
cd ../
#1748393564
cd server/
#1748393984
./list
#1748393985
cd ../ 
#1748393988
./list-logged.sh 
#1748392141
mkfifo pavel
#1748392142
ls
#1748392144
rm pavel 
#1748392149
cd ../server/
#1748393984
./list
#1748393988
./list-logged.sh 
#1748441651
cd chat_room/
#1748441655
cd server/
#1748441658
rm -r tmp/
#1748441663
rm database.txt 
#1748441999
cd ../
#1748442000
cd client/
#1748442015
cd ../ 
#1748445873
man 2 flock 
#1748445891
man 2 flock
#1748447710
rm ../tmp/__server 
#1748447749
vim main.c
#1748447923
make 
#1748448003
clear
#1748448007
./main 
#1748448536
ls 
#1748380848
mkdir client
#1748380851
cd server
#1748384471
apropos mutex 
#1748384478
apropos lock 
#1748385271
apropos close mkfifo 
#1748385330
apropos delete named fifo 
#1748387292
cp ../../notebook-exercises/120/Makefile . 
#1748387311
vim asserted.h
#1748387573
man 2 lseek 
#1748387694
man 2 ssize_t
#1748387696
man ssize_t
#1748388442
man 2 flock 
#1748389020
man mkfifo 
#1748389028
man 2 mkfifo 
#1748389035
man 3 mkfifo
#1748389439
cd server/main.c 
#1748389499
cd asserted.h 
#1748389539
man pid_t 
#1748389562
maek 
#1748390240
lks 
#1748390431
cat tmp/__server 
#1748390443
cat database.txt 
#1748390581
cat tmp/
#1748390582
find tmp/
#1748390595
cat __server 
#1748390609
rm database.txt 
#1748390616
vim main 
#1748390804
cd ../../
#1748390812
rm -r helpers/
#1748390817
rm -r test/
#1748390820
rm -r seminars/
#1748390828
cd chat_room/
#1748390886
mkdir tm
#1748390889
rm -r tm/
#1748390976
mkdir tmp
#1748391032
vim asserted.h 
#1748391241
rm tmp/
#1748391570
rm -r tmp/
#1748391571
mkdir tmp 
#1748391573
./main 
#1748391585
ps 
#1748391598
cp ../server/Makefile 
#1748391600
cp ../server/Makefile  . 
#1748392008
vim ../server/main
#1748392011
vim ../server/main.c
#1748392026
vim main.c 
#1748392141
mkfifo pavel
#1748393984
./list
#1748393988
./list-logged.sh 
#1748392141
mkfifo pavel
#1748393984
./list
#1748393988
./list-logged.sh 
#1748441651
cd chat_room/
#1748441658
rm -r tmp/
#1748441663
rm database.txt 
#1748444985
../client/
#1748445077
cd ../server/
#1748445483
rm __server 
#1748445486
find client_to_server/
#1748445488
find server_to_client/
#1748445689
find ../tmp/server_to_client/
#1748445694
find ../tmp/server_to_client/ | wc -lk 
#1748445696
find ../tmp/server_to_client/ | wc -
#1748445698
find ../tmp/server_to_client/ | wc -l 
#1748445718
ls
#1748445997
ls ../tmp/client_to_server/
#1748446001
ls ../tmp/server_to_client/
#1748446475
rm 
#1748446677
cat da
#1748447221
./main pavkata1
#1748447238
im main.c
#1748447699
make 
#1748447720
./main pavkata
#1748447724
./main pavkata2
#1748447927
make
#1748447932
rm ../tmp/__server 
#1748447943
cd tmp/
#1748447945
cd server_to_client/
#1748447954
ld 
#1748447961
cd client_to_server/
#1748447964
rm pavel 
#1748447966
rm pavkata 
#1748447967
rm pavkata1 
#1748447969
rm pavkata2 
#1748447972
cd ../ 
#1748448001
cd client/
#1748448005
clear
#1748448012
./main pavel
#1748448076
ls 
#1748448080
cd ../
#1748448081
cd server/
#1748448083
vim main.c
#1748448443
cat ../database.txt 
#1748448458
rm da
#1748448497
rm ../database.txt 
#1748448525
cat ../da
#1748390609
rm database.txt 
#1748390616
vim main 
#1748390804
cd ../../
#1748390812
rm -r helpers/
#1748390817
rm -r test/
#1748390820
rm -r seminars/
#1748390828
cd chat_room/
#1748390886
mkdir tm
#1748390889
rm -r tm/
#1748390976
mkdir tmp
#1748391241
rm tmp/
#1748391570
rm -r tmp/
#1748391571
mkdir tmp 
#1748391598
cp ../server/Makefile 
#1748391600
cp ../server/Makefile  . 
#1748392008
vim ../server/main
#1748392011
vim ../server/main.c
#1748392141
mkfifo pavel
#1748393984
./list
#1748393988
./list-logged.sh 
#1748392141
mkfifo pavel
#1748393984
./list
#1748393988
./list-logged.sh 
#1748441651
cd chat_room/
#1748441658
rm -r tmp/
#1748441663
rm database.txt 
#1748444985
../client/
#1748445483
rm __server 
#1748445486
find client_to_server/
#1748445488
find server_to_client/
#1748445689
find ../tmp/server_to_client/
#1748445694
find ../tmp/server_to_client/ | wc -lk 
#1748445696
find ../tmp/server_to_client/ | wc -
#1748445698
find ../tmp/server_to_client/ | wc -l 
#1748445718
ls
#1748445997
ls ../tmp/client_to_server/
#1748446001
ls ../tmp/server_to_client/
#1748446475
rm 
#1748446677
cat da
#1748447221
./main pavkata1
#1748447238
im main.c
#1748447720
./main pavkata
#1748447724
./main pavkata2
#1748447943
cd tmp/
#1748447945
cd server_to_client/
#1748447954
ld 
#1748447961
cd client_to_server/
#1748447964
rm pavel 
#1748447966
rm pavkata 
#1748447967
rm pavkata1 
#1748447969
rm pavkata2 
#1748447972
cd ../ 
#1748448001
cd client/
#1748448012
./main pavel
#1748448443
cat ../database.txt 
#1748448458
rm da
#1748448497
rm ../database.txt 
#1748448525
cat ../da
#1748516339
cd ../server/
#1748516514
cd ../
#1748516519
vim asserted.h 
#1748516559
cd server/
#1748516578
clearl
#1748516580
make
#1748516652
vim main.c 
#1748516654
make 
#1748516912
rm ../tmp/server_to_client/eva3 
#1748516920
rm ../tmp/client_to_server/eva3 
#1748519306
rm ../tmp/client_to_server/eva 
#1748519309
rm ../tmp/client_to_server/pavel 
#1748519310
rm ../tmp/client_to_server/pavel1
#1748519326
rm ../tmp/server_to_client/pavel1
#1748519328
rm ../tmp/server_to_client/pavel 
#1748519335
rm ../tmp/server_to_client/eva 
#1748519337
rm ../tmp/server_to_client/V
#1748519550
vim main.c
#1748519954
rm ../tmp/__server 
#1748519960
rm ../tmp/client_to_server/drug_manqk 
#1748519964
rm ../tmp/client_to_server/pavkata 
#1748519969
rm ../tmp/client_to_server/viksata 
#1748519971
rm ../tmp/client_to_server/why 
#1748519978
rm ../tmp/server_to_client/pavkata 
#1748519980
rm ../tmp/server_to_client/viksata 
#1748519982
rm ../tmp/server_to_client/why 
#1748519985
rm ../tmp/server_to_client/drug_manqk 
#1748519986
ls 
#1748519990
clear
#1748519993
./main 
#1748520101
ps 
#1748520103
exit 
#1748448001
cd client/
#1748448080
cd ../
#1748448081
cd server/
#1748448443
cat ../database.txt 
#1748448458
rm da
#1748448497
rm ../database.txt 
#1748448525
cat ../da
#1748516850
./main eva
#1748516855
./main eva3
#1748517043
vim main.c\
#1748518500
./main 
#1748518620
vim main.c
#1748518813
./main pavel
#1748518994
./main pavel1
#1748519354
./main viksata
#1748519538
clear
#1748519998
./main viksa
#1748520105
ls 
#1748520106
ps 
#1748520108
exit
#1748447238
im main.c
#1748447724
./main pavkata2
#1748447932
rm ../tmp/__server 
#1748447943
cd tmp/
#1748447954
ld 
#1748447966
rm pavkata 
#1748447967
rm pavkata1 
#1748447969
rm pavkata2 
#1748448001
cd client/
#1748448080
cd ../
#1748448081
cd server/
#1748448443
cat ../database.txt 
#1748448458
rm da
#1748448497
rm ../database.txt 
#1748448525
cat ../da
#1748516369
ls
#1748516582
make
#1748516615
vim ../asserted.h 
#1748516657
vim main.c
#1748516659
make 
#1748516663
cleqra
#1748516720
./main pavel
#1748516972
cd ../tmp/
#1748516976
rm __server 
#1748516977
cd client_to_server/
#1748516981
cd ../ 
#1748516984
cd server_to_client/
#1748516986
rm pavel 
#1748516988
ls ../ 
#1748516995
cd ../client_to_server/
#1748517004
cd ../../client/
#1748517005
ls 
#1748519067
./main viksata
#1748519252
ckear
#1748519430
./main pavkata
#1748519535
clear
#1748520048
./main viksa
#1748520049
./main viksa1
#1748520109
exitr 
#1748520111
exit 
#1748448080
cd ../
#1748448081
cd server/
#1748448458
rm da
#1748448497
rm ../database.txt 
#1748448525
cat ../da
#1748518455
make 
#1748519022
./main eva
#1748519397
vim main.c
#1748519420
cat ../database.txt 
#1748519494
./main drug_manqk
#1748519502
./main why
#1748519536
clear
#1748520081
./main pavkata
#1748520111
exit 
#1748444941
cd ../ 
#1748444947
./main 
#1748444965
ls
#1748509417
./list-logged.sh 
#1748509448
cd client/
#1748509483
cd ../
#1748510375
tmux
#1748510516
os 
#1748510526
rm ../tmp/__server 
#1748510533
rm ../tmp/client_to_server/pavel 
#1748510538
rm ../tmp/server_to_client/pavel 
#1748511571
tmux kill-server 
#1748511605
cd chat_room/
#1748511612
vim asserted.h 
#1748511619
cd server/
#1748511621
vim main.c
#1748511710
vim ../client/main.c 
#1748511752
cd ../client/
#1748511753
make 
#1748516333
tmux 
#1748522405
пс 
#1748522406
ps 
#1748522409
ps aux 
#1748522431
tmux kill-server
#1748522441
ls 
#1748522447
pkill -u s0600302
#1748522452
ls 
#1748522455
ps aux 
#1748522656
tmux
#1748522405
пс 
#1748522406
ps 
#1748522409
ps aux 
#1748522431
tmux kill-server
#1748522441
ls 
#1748522447
pkill -u s0600302
#1748522728
cd chat_room/client/
#1748522733
./main pavkata
#1748522999
ps
#1748523691
./main aze
#1748523887
./main pavel
#1748524085
./main vili
#1748524168
./main vilenceto
#1748524810
clear
#1748522406
ps 
#1748522409
ps aux 
#1748522431
tmux kill-server
#1748522441
ls 
#1748522447
pkill -u s0600302
#1748522752
cd chat_room/
#1748522757
cd client/
#1748522764
./main vilito
#1748523005
ps
#1748523972
./main gosho
#1748524176
./main slavenceto
#1748524806
clear
#1748522409
ps aux 
#1748522431
tmux kill-server
#1748522441
ls 
#1748522447
pkill -u s0600302
#1748522781
cd chat_room/
#1748522800
cd client/
#1748522811
./main nqkuv_tip
#1748523006
ps
#1748523982
./main pesho
#1748524947
cd ../tmp/
#1748524966
chmod 777 client_to_server/
#1748524969
chmod 777 server_to_client/
#1748525037
cd ../ 
#1748525043
chmod 777 tmp/
#1748525048
clear
#1748517043
vim main.c\
#1748518994
./main pavel1
#1748519354
./main viksata
#1748519998
./main viksa
#1748520108
exit
#1748447238
im main.c
#1748447724
./main pavkata2
#1748447943
cd tmp/
#1748447954
ld 
#1748447966
rm pavkata 
#1748447967
rm pavkata1 
#1748447969
rm pavkata2 
#1748448458
rm da
#1748448497
rm ../database.txt 
#1748448525
cat ../da
#1748516369
ls
#1748516582
make
#1748516615
vim ../asserted.h 
#1748516663
cleqra
#1748516972
cd ../tmp/
#1748516976
rm __server 
#1748516977
cd client_to_server/
#1748516981
cd ../ 
#1748516984
cd server_to_client/
#1748516986
rm pavel 
#1748516988
ls ../ 
#1748516995
cd ../client_to_server/
#1748517004
cd ../../client/
#1748519067
./main viksata
#1748519252
ckear
#1748520048
./main viksa
#1748520049
./main viksa1
#1748520109
exitr 
#1748520111
exit 
#1748448458
rm da
#1748448497
rm ../database.txt 
#1748448525
cat ../da
#1748519022
./main eva
#1748519494
./main drug_manqk
#1748519502
./main why
#1748520111
exit 
#1748444941
cd ../ 
#1748444965
ls
#1748509417
./list-logged.sh 
#1748510375
tmux
#1748510516
os 
#1748511571
tmux kill-server 
#1748511612
vim asserted.h 
#1748511710
vim ../client/main.c 
#1748511752
cd ../client/
#1748516333
tmux 
#1748522405
пс 
#1748522431
tmux kill-server
#1748522447
pkill -u s0600302
#1748522682
cd chat_room/
#1748522683
cd server/
#1748522700
rm ../tmp/client_to_server/viksa 
#1748522703
rm ../tmp/client_to_server/viksa1 
#1748522711
rm ../tmp/server_to_client/viksa
#1748522713
rm ../tmp/server_to_client/viksa1 
#1748523010
ps aux 
#1748523549
man 2 signal
#1748523639
ps
#1748523648
rm ../tmp/__server 
#1748523654
rm ../tmp/client_to_server/nqkuv_tip 
#1748523657
rm ../tmp/client_to_server/pavkata 
#1748523659
rm ../tmp/client_to_server/vilito 
#1748523665
rm ../tmp/server_to_client/nqkuv_tip 
#1748523669
rm ../tmp/server_to_client/pavkata 
#1748523671
rm ../tmp/server_to_client/vilito 
#1748523865
rm ../tmp/server_to_client/aze 
#1748523869
rm ../tmp/client_to_server/aze 
#1748523875
rm ../tmp/__
#1748523935
make 
#1748523947
rm ../tmp/client_to_server/pavel 
#1748523951
rm ../tmp/server_to_client/pavel 
#1748523957
./main
#1748524080
./main pavel
#1748524162
./main pavkata
#1748524874
cd ../
#1748524876
cd client/
#1748524881
chmod o+x ./main.c
#1748524886
../server/
#1748524890
cd ../server/
#1748525084
cat ../database.txt 
#1748525091
rm ../tmp/client_to_server/petq 
#1748525134
rm ../tmp/client_to_server/petqqqqq 
#1748525152
rm ../tmp/server_to_client/petqqqqq 
#1748525184
./main 
#1748525215
yes
#1748525225
ls 
#1748525227
ps 
#1748525232
clear
#1748525242
rm ../tmp/server_to_client/petq
#1748525260
rm ../tmp/client_to_server/petq
#1748525285
vim main.c
#1748519502
./main why
#1748520111
exit 
#1748444941
cd ../ 
#1748509417
./list-logged.sh 
#1748510375
tmux
#1748510516
os 
#1748511571
tmux kill-server 
#1748511612
vim asserted.h 
#1748511710
vim ../client/main.c 
#1748511752
cd ../client/
#1748516333
tmux 
#1748522405
пс 
#1748522431
tmux kill-server
#1748522447
pkill -u s0600302
#1748522682
cd chat_room/
#1748522700
rm ../tmp/client_to_server/viksa 
#1748522703
rm ../tmp/client_to_server/viksa1 
#1748522711
rm ../tmp/server_to_client/viksa
#1748522713
rm ../tmp/server_to_client/viksa1 
#1748523549
man 2 signal
#1748523639
ps
#1748523654
rm ../tmp/client_to_server/nqkuv_tip 
#1748523657
rm ../tmp/client_to_server/pavkata 
#1748523659
rm ../tmp/client_to_server/vilito 
#1748523665
rm ../tmp/server_to_client/nqkuv_tip 
#1748523669
rm ../tmp/server_to_client/pavkata 
#1748523671
rm ../tmp/server_to_client/vilito 
#1748523865
rm ../tmp/server_to_client/aze 
#1748523869
rm ../tmp/client_to_server/aze 
#1748523875
rm ../tmp/__
#1748523957
./main
#1748524080
./main pavel
#1748524162
./main pavkata
#1748524874
cd ../
#1748524876
cd client/
#1748524881
chmod o+x ./main.c
#1748524886
../server/
#1748524890
cd ../server/
#1748525084
cat ../database.txt 
#1748525134
rm ../tmp/client_to_server/petqqqqq 
#1748525152
rm ../tmp/server_to_client/petqqqqq 
#1748525215
yes
#1748525242
rm ../tmp/server_to_client/petq
#1748525260
rm ../tmp/client_to_server/petq
#1748553186
cd server/
#1748553293
ls ../tmp/client_to_server/
#1748553297
ls
#1748554061
ls ../tmp/server_to_client/
#1748555200
vim main.c 
#1748555306
rm ../tmp/__server 
#1748555311
rm ../tmp/server_to_client/evcheto 
#1748555313
rm ../tmp/server_to_client/pavel 
#1748555315
rm ../tmp/server_to_client/petq 
#1748555320
rm ../tmp/client_to_server/evcheto 
#1748555322
rm ../tmp/client_to_server/pavel 
#1748555325
rm ../tmp/client_to_server/petq 
#1748555528
vim main.c
#1748555628
maek 
#1748555629
make 
#1748555721
./main 
#1748555729
ls 
#1748555730
ps 
#1748555732
ps aux 
#1748555745
clear
#1748523648
rm ../tmp/__server 
#1748523654
rm ../tmp/client_to_server/nqkuv_tip 
#1748523657
rm ../tmp/client_to_server/pavkata 
#1748523659
rm ../tmp/client_to_server/vilito 
#1748523665
rm ../tmp/server_to_client/nqkuv_tip 
#1748523669
rm ../tmp/server_to_client/pavkata 
#1748523671
rm ../tmp/server_to_client/vilito 
#1748523865
rm ../tmp/server_to_client/aze 
#1748523869
rm ../tmp/client_to_server/aze 
#1748523875
rm ../tmp/__
#1748523947
rm ../tmp/client_to_server/pavel 
#1748523951
rm ../tmp/server_to_client/pavel 
#1748523957
./main
#1748524874
cd ../
#1748524881
chmod o+x ./main.c
#1748524886
../server/
#1748524890
cd ../server/
#1748525084
cat ../database.txt 
#1748525091
rm ../tmp/client_to_server/petq 
#1748525134
rm ../tmp/client_to_server/petqqqqq 
#1748525152
rm ../tmp/server_to_client/petqqqqq 
#1748525184
./main 
#1748525215
yes
#1748525227
ps 
#1748525242
rm ../tmp/server_to_client/petq
#1748525260
rm ../tmp/client_to_server/petq
#1748553194
cd client/
#1748553195
ls 
#1748555211
./main pavel
#1748555288
cl,kear
#1748555422
./main pavkata
#1748555488
vim main.c
#1748555626
make 
#1748555706
clear
#1748555724
./main eva
#1748524890
cd ../server/
#1748525084
cat ../database.txt 
#1748525091
rm ../tmp/client_to_server/petq 
#1748525134
rm ../tmp/client_to_server/petqqqqq 
#1748525152
rm ../tmp/server_to_client/petqqqqq 
#1748525184
./main 
#1748525215
yes
#1748525225
ls 
#1748525227
ps 
#1748525242
rm ../tmp/server_to_client/petq
#1748525260
rm ../tmp/client_to_server/petq
#1748525285
vim main.c
#1748553197
cd client/
#1748553222
./main mivkata
#1748555338
./main evcheto
#1748555436
./main eva
#1748555443
make 
#1748555646
./main pavkata
#1748555708
clear
#1748525242
rm ../tmp/server_to_client/petq
#1748525260
rm ../tmp/client_to_server/petq
#1748525285
vim main.c
#1748553200
cd client/
#1748553201
make 
#1748555101
ls ../tmp/client_to_server/
#1748555106
ls ../tmp/server_to_client/
#1748555248
./main petq
#1748555666
./main goshkata
#1748555710
clear
#1748525242
rm ../tmp/server_to_client/petq
#1748525260
rm ../tmp/client_to_server/petq
#1748553194
cd client/
#1748553195
ls 
#1748555211
./main pavel
#1748555288
cl,kear
#1748555724
./main eva
#1748525084
cat ../database.txt 
#1748525091
rm ../tmp/client_to_server/petq 
#1748525134
rm ../tmp/client_to_server/petqqqqq 
#1748525152
rm ../tmp/server_to_client/petqqqqq 
#1748525184
./main 
#1748525215
yes
#1748525225
ls 
#1748525227
ps 
#1748525242
rm ../tmp/server_to_client/petq
#1748525260
rm ../tmp/client_to_server/petq
#1748553197
cd client/
#1748553222
./main mivkata
#1748555338
./main evcheto
#1748555436
./main eva
#1748525242
rm ../tmp/server_to_client/petq
#1748525260
rm ../tmp/client_to_server/petq
#1748553200
cd client/
#1748555101
ls ../tmp/client_to_server/
#1748555106
ls ../tmp/server_to_client/
#1748555666
./main goshkata
#1748556156
chmod ../tmp/__server 777
#1748556751
chmod 777 ../tmp/__server 
#1748556757
stat ../tmp/server_to_client/
#1748556763
stat ../tmp/client_to_server/
#1748556765
stat ../tmp/client_to_server/petq 
#1748556775
stat ../tmp/server_to_client/petq 
#1748556923
cd ../server/
#1748556925
vim amin.c
#1748556929
vim main.c 
#1748557019
stat ../tmp/__server 
#1748557100
make
#1748557106
vim main.c
#1748557117
make 
#1748557127
./main pavlata
#1748557143
cd ../client/
#1748557144
cleare
#1748558354
./main pavcho
#1748558562
./main pavkata
#1748559026
clear
#1748559081
./main petq
#1748558747
./main kiborga
#1748559027
clear
#1748559077
./main pavkata
#1748559088
./main gosho
#1748525084
cat ../database.txt 
#1748525091
rm ../tmp/client_to_server/petq 
#1748525134
rm ../tmp/client_to_server/petqqqqq 
#1748525152
rm ../tmp/server_to_client/petqqqqq 
#1748525215
yes
#1748525242
rm ../tmp/server_to_client/petq
#1748525260
rm ../tmp/client_to_server/petq
#1748553194
cd client/
#1748555211
./main pavel
#1748555288
cl,kear
#1748555422
./main pavkata
#1748555724
./main eva
#1748525084
cat ../database.txt 
#1748525091
rm ../tmp/client_to_server/petq 
#1748525134
rm ../tmp/client_to_server/petqqqqq 
#1748525152
rm ../tmp/server_to_client/petqqqqq 
#1748525215
yes
#1748525242
rm ../tmp/server_to_client/petq
#1748525260
rm ../tmp/client_to_server/petq
#1748553197
cd client/
#1748553222
./main mivkata
#1748555338
./main evcheto
#1748555436
./main eva
#1748555646
./main pavkata
#1748525242
rm ../tmp/server_to_client/petq
#1748525260
rm ../tmp/client_to_server/petq
#1748553200
cd client/
#1748555101
ls ../tmp/client_to_server/
#1748555106
ls ../tmp/server_to_client/
#1748555248
./main petq
#1748555666
./main goshkata
#1748555978
cd ../server/
#1748556081
stat ../tmp/server_to_client/
#1748556084
stat ../tmp/client_to_server/
#1748556723
ls 
#1748557335
ps 
#1748557337
ps aux 
#1748557368
pkill -u root 
#1748557375
man 2 pkill 
#1748557378
man pkill 
#1748558376
vim main.c
#1748558520
make 
#1748558535
rm ../tmp/client_to_server/eva
#1748558537
rm ../tmp/client_to_server/eva1 
#1748558539
rm ../tmp/client_to_server/pavcho 
#1748558544
rm ../tmp/server_to_client/eva 
#1748558546
rm ../tmp/server_to_client/eva1 
#1748558548
rm ../tmp/server_to_client/pavcho 
#1748559056
rm ../tmp/__server 
#1748559063
rm ../tmp/server_to_client/*
#1748559070
rm ../tmp/client_to_server/*
#1748559071
clear
#1748559073
./main 
#1748558828
./main ivailo
#1748559032
clear
#1748558967
./main klasna
#1748559034
clear
#1748555288
cl,kear
#1748525084
cat ../database.txt 
#1748525091
rm ../tmp/client_to_server/petq 
#1748525134
rm ../tmp/client_to_server/petqqqqq 
#1748525152
rm ../tmp/server_to_client/petqqqqq 
#1748525184
./main 
#1748525215
yes
#1748525227
ps 
#1748525242
rm ../tmp/server_to_client/petq
#1748525260
rm ../tmp/client_to_server/petq
#1748553197
cd client/
#1748553222
./main mivkata
#1748555338
./main evcheto
#1748525242
rm ../tmp/server_to_client/petq
#1748525260
rm ../tmp/client_to_server/petq
#1748553200
cd client/
#1748555101
ls ../tmp/client_to_server/
#1748555106
ls ../tmp/server_to_client/
#1748555248
./main petq
#1748555666
./main goshkata
#1748556019
cd ../tmp/
#1748556025
stat . 
#1748556030
stat __server 
#1748556038
cd ../
#1748556040
cd server/
#1748556426
./main pavkata
#1748558008
cd ../server/
#1748558112
]make 
#1748558114
ls 
#1748558119
cd ../client/
#1748558190
vim main.c
#1748558343
make 
#1748558365
./main eva1
#1748558565
./main eva
#1748559037
clear
#1748558639
./main sashko
#1748559035
clear
#1748522656
tmux
#1748553031
./list-logged.sh 
#1748553035
cd chat_room/
#1748553035
ls 
#1748553038
cat database.txt 
#1748553046
ps 
#1748553048
ps aux 
#1748510516
os 
#1748510526
rm ../tmp/__server 
#1748510533
rm ../tmp/client_to_server/pavel 
#1748510538
rm ../tmp/server_to_client/pavel 
#1748511612
vim asserted.h 
#1748511710
vim ../client/main.c 
#1748522405
пс 
#1748522431
tmux kill-server
#1748522447
pkill -u s0600302
#1748522656
tmux
#1748553100
cd chat_room/
#1748553109
tmux kill-server 
#1748555787
cd server/
#1748555815
cd ../client/
#1748555817
vim main.c
#1748555866
vim ../server/main.c 
#1748555883
make 
#1748555884
ls 
#1748555965
tmux 
#1748559125
ps 
#1748559127
ps aux 
#1748559135
pkill -u s0600302 
#1748559135
pkill -u s0600302 
#1748559141
ls 
#1748559154
tmux kill-server 
#1748559158
ps aux 
#1748559173
kill 14549
#1748559179
ps aux 
#1748559206
tmux
#1748605501
cd client/
#1748605504
./main pavel
#1748605591
ls 
#1748559206
tmux
#1748605470
cd server/
#1748605476
rm ../tmp/__server 
#1748605481
rm ../tmp/client_to_server/pavkata
#1748605484
rm ../tmp/client_to_server/petq 
#1748605490
rm ../tmp/server_to_client/pavkata 
#1748605491
rm ../tmp/server_to_client/petq 
#1748605493
ls 
#1748605499
./main 
#1748605508
cd client/
#1748605514
./main vladi
#1748605608
cat ../database.txt 
#1748605532
cd client/
#1748605535
./main pesho
#1748559173
kill 14549
#1748559213
cd chat_room/
#1748559214
cd srr
#1748559215
cd server/
#1748559222
rm ../tmp/__server 
#1748559226
rm ../tmp/client_to_server/gosho 
#1748559228
rm ../tmp/client_to_server/pavkata 
#1748559231
rm ../tmp/client_to_server/petq 
#1748559237
rm ../tmp/server_to_client/*
#1748559242
ls 
#1748559243
clear
#1748559245
./main 
#1748559247
clear
#1748559250
cd chat_room/
#1748559252
cd client/
#1748559259
./main pavkata
#1748559135
pkill -u s0600302 
#1748559135
pkill -u s0600302 
#1748559154
tmux kill-server 
#1748559173
kill 14549
#1748605452
./list-logged.sh 
#1748605455
cd ser
#1748605457
cd cl
#1748605459
cd chat_room/
#1748605464
tmux
#1748605661
tmux kill-server
#1748605663
ps aux 
#1748605672
ls 
#1748618062
./list-logged.sh 
#1748688009
cd client/
#1748688013
./main pesho
#1748605661
tmux kill-server
#1748605663
ps aux 
#1748618062
./list-logged.sh 
#1748687967
ls tmp/
#1748687970
ls tmp/client_to_server/
#1748687977
cd server/
#1748687978
clear
#1748687980
./main 
#1748688053
cat ../tmp/
#1748688056
find  ../tmp/
#1748688060
find  ../tmp/client_to_server/
#1748688064
find  ../tmp/server_to_client/
#1748688065
ls 
#1748687982
clear
#1748687984
cd client/
#1748687987
./main pavkata
#1748605661
tmux kill-server
#1748605663
ps aux 
#1748618062
./list-logged.sh 
#1748687890
ps 
#1748687892
ps auxc 
#1748687932
cd chat_room/
#1748687944
tmux 
#1748689170
./assert.h
#1748689192
vim asserted.h 
#1748689225
ls 
#1748687890
ps 
#1748687892
ps auxc 
#1748687932
cd chat_room/
#1748687944
tmux 
#1748689170
./assert.h
#1748689192
vim asserted.h 
#1748696147
./main 
#1748696234
cat ../tmp/
#1748696240
find  ../tmp/
#1748696243
find  ../tmp/server_to_client/
#1748696246
find  ../tmp/client_to_server/
#1748696247
ls 
#1748696252
vim main.c
#1748696284
clear
#1748687944
tmux 
#1748689170
./assert.h
#1748689192
vim asserted.h 
#1748689225
ls 
#1748691938
cd ../client/
#1748696158
./main pavkata
#1748696229
clear
#1748689192
vim asserted.h 
#1748689225
ls 
#1748691977
cd ../
#1748691979
cd client/
#1748691986
./main kiborga
#1748696164
./main goshko
#1748696230
clear
#1748689170
./assert.h
#1748689192
vim asserted.h 
#1748689225
ls 
#1748690736
cd ../client/
#1748690741
./main pavkata
#1748696078
./main eva
#1748696178
./main pesho 
#1748696265
vim main.c
#1748696282
clear
#1748695800
./main kurec
#1748695803
cd ../client/
#1748695806
./main kurecx 
#1748696151
clear
#1748696459
cd chat_room/server/
#1748696461
./main 
#1748687892
ps auxc 
#1748689170
./assert.h
#1748689192
vim asserted.h 
#1748690711
cd chat_room/
#1748690714
cat database.txt 
#1748690723
cd server/
#1748696298
tmux kill-server 
#1748696301
./list
#1748696303
cd ../../
#1748696305
./list-logged.sh 
#1748696453
tmux 
#1748696473
ps 
#1748696480
cd chat_room/server/
#1748696482
./main 
#1748696486
cd ../client/
#1748696490
./main pavkata
#1748696498
rm ../tmp/__server 
#1748696504
rm ../tmp/server_to_client/pavkata 
#1748696507
rm ../tmp/client_to_server/pavkata 
#1748696509
ls 
#1748703247
./list-logged.sh 
#1748703257
tmux 
#1748806801
xit
#1748806803
exit
#1748806672
tmux
#1748806808
exit
#1748812088
./list-logged.sh 
#1748812095
man 2 semaphor 
#1748812099
man 2 semaphore 
#1748812102
man  semaphore 
#1748812103
man  semaphor
#1748812108
apropos semaphor 
#1748812129
man semaphor
#1748812131
man semaphor.h
#1748812140
man semaphore
#1748812151
man 2 semaphore
#1748812153
man 2 semaphore.h
#1748812155
man 2semaphore.h
#1748812158
man semaphore.h
#1748696507
rm ../tmp/client_to_server/pavkata 
#1748696509
ls 
#1748703290
cd chat_room/
#1748703291
cd client/
#1748703293
./main pavel
#1748703688
clear
#1748703728
cd ../c
#1748703731
cd ../server/
#1748703808
cd ../client/
#1748703866
make 
#1748703869
vim main.c
#1748703296
cd cli
#1748703298
cd chat_room/
#1748703299
cd client/
#1748703305
./main ulian
#1748703690
clear
#1748703708
vim main.c
#1748703380
cd chat_room/
#1748703385
cd client/
#1748703389
./main goshkata
#1748703685
clear
#1748696507
rm ../tmp/client_to_server/pavkata 
#1748703260
cd chat_room/
#1748703273
cd server/
#1748703274
ls 
#1748703275
clear
#1748703277
./main 
#1749051439
./list-logged.sh 
#1748703389
./main goshkata
#1748703685
clear
#1748703260
cd chat_room/
#1748703275
clear
#1749051439
./list-logged.sh 
#1749064183
cd server/
#1749064185
./MA
#1749064215
ps axu 
#1749064236
ls ../tmp/
#1749064241
rm __ser
#1749064262
./main 
#1749064287
rm ../tmp/__server 
#1749064291
rm ../tmp/server_to_client/pavkata 
#1749064302
rm ../tmp/client_to_server/pavkata 
#1749064303
ls 
#1749064189
cd client/
#1749064193
./main pavkata
#1749064267
./main eva
#1749064274
cd client/
#1749064276
./main pavkata
#1749064358
du -u s0600302
#1749064367
quota -u s0600302
#1749064417
du -sh * 
#1749064468
du -sh .[!.]* * | sort -h | tail
#1748696298
tmux kill-server 
#1748696301
./list
#1748696303
cd ../../
#1748696305
./list-logged.sh 
#1748696473
ps 
#1748696480
cd chat_room/server/
#1748696482
./main 
#1748696486
cd ../client/
#1748696490
./main pavkata
#1748696498
rm ../tmp/__server 
#1748696504
rm ../tmp/server_to_client/pavkata 
#1748696507
rm ../tmp/client_to_server/pavkata 
#1748703247
./list-logged.sh 
#1748806801
xit
#1748806803
exit
#1748806672
tmux
#1748806808
exit
#1748812088
./list-logged.sh 
#1748812095
man 2 semaphor 
#1748812099
man 2 semaphore 
#1748812102
man  semaphore 
#1748812103
man  semaphor
#1748812108
apropos semaphor 
#1748812129
man semaphor
#1748812131
man semaphor.h
#1748812140
#1749065046
./main 
#1749065122
clear
#1749065055
cd ../client/
#1749065057
./main eva
#1749065128
clear
#1749065048
cd ../client/
#1749065051
./main pavkaqta
#1749065124
clear
#1749065077
cd ../client/
#1749065080
./main 
#1749065090
./main drugpich 
#1749065126
clear
#1748696504
rm ../tmp/server_to_client/pavkata 
#1748696507
rm ../tmp/client_to_server/pavkata 
#1748703247
./list-logged.sh 
#1748806801
xit
#1748806803
exit
#1748806672
tmux
#1748806808
exit
#1748812088
./list-logged.sh 
#1748812095
man 2 semaphor 
#1748812099
man 2 semaphore 
#1748812102
man  semaphore 
#1748812103
man  semaphor
#1748812108
apropos semaphor 
#1748812129
man semaphor
#1748812131
man semaphor.h
#1749064841
vim asserted.h 
#1749064898
rm main.o
#1749064902
vim main.c
#1749064928
du -sh .[!.]* * | sort -h | tail
#1749064950
cd ../../
#1749064951
du
#1749065000
rm -r ~/notebook-exercises/101/reshenie-na-gochev-s-idx-array
#1749065003
du 
#1749065008
cd chat_room/
#1749065015
cd server/
#1749065036
tmux 
#1749065144
cd ../../ 
#1749069090
gcc
#1749069100
cd ls
#1749069102
cd notebook-exercises/
#1749069103
lks 
#1749069106
cd 120/
#1749069111
gcc main.c 
#1749069113
ls 
#1749069117
rm a.out
#1749069118
make 
#1748812095
man 2 semaphor 
#1748812099
man 2 semaphore 
#1748812102
man  semaphore 
#1748812103
man  semaphor
#1748812108
apropos semaphor 
#1748812129
man semaphor
#1748812131
man semaphor.h
#1749065046
./main 
#1749065055
cd ../client/
#1749065057
./main eva
#1749065048
cd ../client/
#1749065051
./main pavkaqta
#1749065077
cd ../client/
#1749065080
./main 
#1749065090
./main drugpich 
#1748696504
rm ../tmp/server_to_client/pavkata 
#1748696507
rm ../tmp/client_to_server/pavkata 
#1748806801
xit
#1748806803
exit
#1748806672
tmux
#1748806808
exit
#1748812095
man 2 semaphor 
#1748812099
man 2 semaphore 
#1748812102
man  semaphore 
#1748812103
man  semaphor
#1748812108
apropos semaphor 
#1748812129
man semaphor
#1748812131
man semaphor.h
#1749064841
vim asserted.h 
#1749064898
rm main.o
#1749064928
du -sh .[!.]* * | sort -h | tail
#1749064950
cd ../../
#1749064951
du
#1749065000
rm -r ~/notebook-exercises/101/reshenie-na-gochev-s-idx-array
#1749065003
du 
#1749065008
cd chat_room/
#1749065015
cd server/
#1749065036
tmux 
#1749065144
cd ../../ 
#1749069090
gcc
#1749069100
cd ls
#1749069103
lks 
#1749069106
cd 120/
#1749069111
gcc main.c 
#1749069117
rm a.out
#1749126436
cd ../../azisoffline/
#1749126440
cd 118-2023-SE-02/
#1749126497
cd !
#1749126498
cd ~
#1749126502
../g
#1749126526
./list-logged.sh 
#1749126682
cd notebook-exercises/
#1749126713
find 120/
#1749126721
mkdir 121
#1749126722
cd 121
#1749126730
cp ../100/Makefile  . 
#1749131399
man 2 stat
#1749131439
man 2 stat 
#1749131594
..//../finder.sh 121 2025-IN-01
#1749131604
../../finder.sh 2025-IN-01
#1749131655
../../finder.sh 2025-IN-01 | grep "input"
#1749131662
cat ./srv/sample-data/04-c/2025-IN-01/input.bin
#1749131666
cp /srv/sample-data/04-c/2025-IN-01/input.bin . 
#1749131730
find /srv/sample-data/04-c/2025-IN-01
#1749131746
find /srv/sample-data/04-c/2025-IN-01 -regex "vm*"
#1749131750
find /srv/sample-data/04-c/2025-IN-01 -regex "/*vm*"
#1749131753
find /srv/sample-data/04-c/2025-IN-01 -regex ".**vm*"
#1749131764
find /srv/sample-data/04-c/2025-IN-01 -regex ".*"
#1749131767
find /srv/sample-data/04-c/2025-IN-01 -regex ".*v"
#1749131771
find /srv/sample-data/04-c/2025-IN-01 -regex ".*v,*"
#1749131774
find /srv/sample-data/04-c/2025-IN-01 -regex ".*v.*"
#1749131776
find /srv/sample-data/04-c/2025-IN-01 -regex ".*vm.*"
#1749131787
find /srv/sample-data/04-c/2025-IN-01 -regex ".*vm.*" -exec cp {} .
#1749131796
find /srv/sample-data/04-c/2025-IN-01 -regex ".*vm.*" -exec cp {} . ';'
#1749131810
ps asux 
#1749131854
ls 
#1749131977
make 
#1749132035
ps aux 
#1749132198
./main input.bin 
#1749132223
vim main.c
#1749132269
clear
#1749132272
ps 
#1749132279
../../list-logged.sh 
#1749131764
find /srv/sample-data/04-c/2025-IN-01 -regex ".*"
#1749131767
find /srv/sample-data/04-c/2025-IN-01 -regex ".*v"
#1749131771
find /srv/sample-data/04-c/2025-IN-01 -regex ".*v,*"
#1749131774
find /srv/sample-data/04-c/2025-IN-01 -regex ".*v.*"
#1749131776
find /srv/sample-data/04-c/2025-IN-01 -regex ".*vm.*"
#1749131787
find /srv/sample-data/04-c/2025-IN-01 -regex ".*vm.*" -exec cp {} .
#1749131796
find /srv/sample-data/04-c/2025-IN-01 -regex ".*vm.*" -exec cp {} . ';'
#1749131810
ps asux 
#1749132035
ps aux 
#1749132269
clear
#1749132279
../../list-logged.sh 
#1749134593
cd notebook-exercises/
#1749134595
cd 121/
#1749134679
ps 
#1749134681
ls 
#1749135111
man2 wait 
#1749135114
man 2 wait 
#1749135137
vim main.c
#1749135230
make 
#1749135232
./main input.bin 
#1749154887
clear
#1749131771
find /srv/sample-data/04-c/2025-IN-01 -regex ".*v,*"
#1749131774
find /srv/sample-data/04-c/2025-IN-01 -regex ".*v.*"
#1749131776
find /srv/sample-data/04-c/2025-IN-01 -regex ".*vm.*"
#1749131787
find /srv/sample-data/04-c/2025-IN-01 -regex ".*vm.*" -exec cp {} .
#1749131796
find /srv/sample-data/04-c/2025-IN-01 -regex ".*vm.*" -exec cp {} . ';'
#1749131810
ps asux 
#1749132035
ps aux 
#1749132279
../../list-logged.sh 
#1749134595
cd 121/
#1749134679
ps 
#1749135111
man2 wait 
#1749135114
man 2 wait 
#1749135230
make 
#1749135232
./main input.bin 
#1749144199
;s 
#1749144202
clear
#1749144208
cd notebook-exercises/
#1749144246
cd 117/
#1749144249
vim main.c 
#1749144314
mkdir test
#1749144317
cd test/
#1749144322
mkdir nested
#1749144324
cd nested/
#1749144333
echo text > firstfile.txt
#1749144335
cd ../ 
#1749144347
echo somethingelse > file1.txt
#1749144349
echo somethingelse > file2.txt
#1749144354
echo something > file1.txt
#1749144355
ls 
#1749144358
cd ../
#1749144359
 ls
#1749144365
find test/
#1749144371
find test/ -type f 
#1749144403
find test/ -type f | grep -o "hash"
#1749144426
find test/ -type f -o "test"
#1749144534
find test/ -type f -regex -o ".*\.hash$"
#1749144539
find test/ -type f -regex ".*\.hash$"
#1749144543
find test/ -type f
#1749144552
apropos not match grep 
#1749144582
man 2 grep
#1749144587
man grep
#1749144644
find test/ -type f | grep -v "\.hash" | xargs -I md5sum {}
#1749144665
find test/ -type f | grep -v "\.hash" | xargs -I
#1749144673
find test/ -type f | grep -v "\.hash" | xargs -I {} md5sum {}
#1749144713
md5sum test/file1.txt
#1749144728
md5sum test/file1.txt | cut -d " " -f1
#1749144730
md5sum test/file1.txt | cut -d " " -f2
#1749144735
md5sum test/file1.txt | cut -d " " -f3
#1749146129
find test/ -type f | grep -v "\.hash"
#1749146148
vim main.c
#1749065077
cd ../client/
#1749065090
./main drugpich 
#1748696504
rm ../tmp/server_to_client/pavkata 
#1748696507
rm ../tmp/client_to_server/pavkata 
#1748806801
xit
#1748806803
exit
#1748806672
tmux
#1748806808
exit
#1748812095
man 2 semaphor 
#1748812099
man 2 semaphore 
#1748812102
man  semaphore 
#1748812103
man  semaphor
#1748812108
apropos semaphor 
#1748812129
man semaphor
#1748812131
man semaphor.h
#1749064841
vim asserted.h 
#1749064898
rm main.o
#1749064928
du -sh .[!.]* * | sort -h | tail
#1749064951
du
#1749065000
rm -r ~/notebook-exercises/101/reshenie-na-gochev-s-idx-array
#1749065003
du 
#1749065015
cd server/
#1749065144
cd ../../ 
#1749069090
gcc
#1749069100
cd ls
#1749069103
lks 
#1749069106
cd 120/
#1749069111
gcc main.c 
#1749069117
rm a.out
#1749126436
cd ../../azisoffline/
#1749126440
cd 118-2023-SE-02/
#1749126497
cd !
#1749126498
cd ~
#1749126502
../g
#1749126526
./list-logged.sh 
#1749126713
find 120/
#1749126721
mkdir 121
#1749126722
cd 121
#1749126730
cp ../100/Makefile  . 
#1749131399
man 2 stat
#1749131439
man 2 stat 
#1749131594
..//../finder.sh 121 2025-IN-01
#1749131604
../../finder.sh 2025-IN-01
#1749131655
../../finder.sh 2025-IN-01 | grep "input"
#1749131662
cat ./srv/sample-data/04-c/2025-IN-01/input.bin
#1749131666
cp /srv/sample-data/04-c/2025-IN-01/input.bin . 
#1749131730
find /srv/sample-data/04-c/2025-IN-01
#1749131746
find /srv/sample-data/04-c/2025-IN-01 -regex "vm*"
#1749131750
find /srv/sample-data/04-c/2025-IN-01 -regex "/*vm*"
#1749131753
find /srv/sample-data/04-c/2025-IN-01 -regex ".**vm*"
#1749131764
find /srv/sample-data/04-c/2025-IN-01 -regex ".*"
#1749131767
find /srv/sample-data/04-c/2025-IN-01 -regex ".*v"
#1749131771
find /srv/sample-data/04-c/2025-IN-01 -regex ".*v,*"
#1749131774
find /srv/sample-data/04-c/2025-IN-01 -regex ".*v.*"
#1749131776
find /srv/sample-data/04-c/2025-IN-01 -regex ".*vm.*"
#1749131787
find /srv/sample-data/04-c/2025-IN-01 -regex ".*vm.*" -exec cp {} .
#1749131796
find /srv/sample-data/04-c/2025-IN-01 -regex ".*vm.*" -exec cp {} . ';'
#1749131810
ps asux 
#1749132035
ps aux 
#1749132198
./main input.bin 
#1749132272
ps 
#1749132279
../../list-logged.sh 
#1749131764
find /srv/sample-data/04-c/2025-IN-01 -regex ".*"
#1749131767
find /srv/sample-data/04-c/2025-IN-01 -regex ".*v"
#1749131771
find /srv/sample-data/04-c/2025-IN-01 -regex ".*v,*"
#1749131774
find /srv/sample-data/04-c/2025-IN-01 -regex ".*v.*"
#1749131776
find /srv/sample-data/04-c/2025-IN-01 -regex ".*vm.*"
#1749131787
find /srv/sample-data/04-c/2025-IN-01 -regex ".*vm.*" -exec cp {} .
#1749131796
find /srv/sample-data/04-c/2025-IN-01 -regex ".*vm.*" -exec cp {} . ';'
#1749131810
ps asux 
#1749132035
ps aux 
#1749132279
../../list-logged.sh 
#1749134595
cd 121/
#1749134679
ps 
#1749135111
man2 wait 
#1749135114
man 2 wait 
#1749135232
./main input.bin 
#1749131771
find /srv/sample-data/04-c/2025-IN-01 -regex ".*v,*"
#1749131774
find /srv/sample-data/04-c/2025-IN-01 -regex ".*v.*"
#1749131776
find /srv/sample-data/04-c/2025-IN-01 -regex ".*vm.*"
#1749131787
find /srv/sample-data/04-c/2025-IN-01 -regex ".*vm.*" -exec cp {} .
#1749131796
find /srv/sample-data/04-c/2025-IN-01 -regex ".*vm.*" -exec cp {} . ';'
#1749131810
ps asux 
#1749132035
ps aux 
#1749132279
../../list-logged.sh 
#1749134595
cd 121/
#1749134679
ps 
#1749135111
man2 wait 
#1749135114
man 2 wait 
#1749135232
./main input.bin 
#1749144199
;s 
#1749144314
mkdir test
#1749144322
mkdir nested
#1749144333
echo text > firstfile.txt
#1749144347
echo somethingelse > file1.txt
#1749144349
echo somethingelse > file2.txt
#1749144354
echo something > file1.txt
#1749144359
 ls
#1749144365
find test/
#1749144403
find test/ -type f | grep -o "hash"
#1749144426
find test/ -type f -o "test"
#1749144534
find test/ -type f -regex -o ".*\.hash$"
#1749144539
find test/ -type f -regex ".*\.hash$"
#1749144543
find test/ -type f
#1749144552
apropos not match grep 
#1749144582
man 2 grep
#1749144587
man grep
#1749144644
find test/ -type f | grep -v "\.hash" | xargs -I md5sum {}
#1749144665
find test/ -type f | grep -v "\.hash" | xargs -I
#1749144673
find test/ -type f | grep -v "\.hash" | xargs -I {} md5sum {}
#1749144728
md5sum test/file1.txt | cut -d " " -f1
#1749144730
md5sum test/file1.txt | cut -d " " -f2
#1749144735
md5sum test/file1.txt | cut -d " " -f3
#1749146129
find test/ -type f | grep -v "\.hash"
#1749198951
 ./list-logged.sh 
#1749198958
cd notebook-exercises/
#1749198978
cd 117/
#1749199076
md5sum < test/
#1749199078
md5sum < test/file1.txt 
#1749199092
md5sum < test/nested/firstfile.txt 
#1749199105
md5sum test/file1.txt
#1749199121
rm "/home/students/s0600302/.local/share/nvim/swap//%home%students%s0600302%notebook-exercises%117%main.c.swp"
#1749199124
vim main.c 
#1749201201
find test/ type -f 
#1749201205
find test/ -type f 
#1749201246
file2.txt.hash
#1749201261
firstfile.txt.hash
#1749201262
cat firstfile.txt.hash
#1749201422
rm file2.txt.hash 
#1749201429
rm file1.txt.hash 
#1749201437
rm firstfile.txt.hash 
#1749201656
rm file1.txt.hash
#1749201659
rm file2.txt.hash
#1749201662
cd nested/
#1749201667
rm firstfile.txt.hash
#1749201671
cd ../../
#1749202159
cat file2.txt.hash
#1749202166
cat file1.txt.hash
#1749202232
clear
#1749202235
./main 
#1749202259
echo pavkata > pavkata.txt
#1749202558
vim main.c
#1749202564
make 
#1749202566
./main test/
#1749202568
cd test/
#1749202572
cat pavkata.txt.hash
#1749202574
cd ../
#1749202666
cd ../ 
#1749202668
cd chat_room/
#1749202669
ls 
#1749202671
tmux 
#1749202680
cd server/
#1749202682
./main 
#1749202747
ls 
#1749202759
clear
#1749202761
kill
#1749202772
pkill -u s0600302
#1749202694
cd client/
#1749202697
./main gosho
#1749202757
clear
#1749202685
cd client/
#1749202689
./main pavkata
#1749202749
clear
#1749202700
cd client/
#1749202714
./main pesho
#1749202755
clear
#1749202700
cd client/
#1749202714
./main pesho
#1749202813
ls 
#1749202815
ps aux 
#1749202819
65;51;25M64;50;26M73;48;25M73;48;25M73;48;25M73;48;25M73;48;25M72;48;25M72;48;25M72;48;25M72;48;25Mclear
#1749202821
clear
#1749202894
exit 
#1749203012
xinput list 
#1749203142
bind -f /etc/inputrc 
#1749203144
exitr
#1749203145
exit
#1749203152
clear
#1749205062
./list-logged.sh 
#1749205083
bind -f /etc/inputrc 
#1749205089
exit
#1749205062
./list-logged.sh 
#1749205166
tmux set -g mouse off
#1749205203
bind -f /etc/inputrc 
#1749205210
2;76;44M2;76;44m2;76;44M2;76;44m2;76;44M34;76;44M2;76;44m2;76;44M2;76;44m2;76;44M2;76;44m2;77;44M2;77;44m2;77;44M2;77;44m
#1749205216
restart
#1749205218
exit
#1749205244
tmux kill-server 
#1749205256
tmux -f /dev/null 
#1749205277
clkear
#1749205278
clear
#1749205281
exit 
#1749205203
bind -f /etc/inputrc 
#1749205210
2;76;44M2;76;44m2;76;44M2;76;44m2;76;44M34;76;44M2;76;44m2;76;44M2;76;44m2;76;44M2;76;44m2;77;44M2;77;44m2;77;44M2;77;44m
#1749205216
restart
#1749205218
exit
#1749205244
tmux kill-server 
#1749205256
tmux -f /dev/null 
#1749205277
clkear
#1749205281
exit 
#1749205292
clear
#1749205305
cd notebook-exercises/
#1749205306
lds 
#1749205315
cd ../ 
#1749205331
vim notebook-exercises/120/main.c
#1749205382
./todo_finder.sh notebook-exercises/
#1749205420
vim notebook-exercises/98/main.c
#1749205448
vim 
#1749205454
vim notebook-exercises/102/main.c
#1749208380
./list-logged.sh 
#1749208660
ls 
#1749217996
man cat 
#1749218002
man 2 cat 
#1749218004
man cat
#1749205278
clear
#1749205281
exit 
#1749205203
bind -f /etc/inputrc 
#1749205210
2;76;44M2;76;44m2;76;44M2;76;44m2;76;44M34;76;44M2;76;44m2;76;44M2;76;44m2;76;44M2;76;44m2;77;44M2;77;44m2;77;44M2;77;44m
#1749205216
restart
#1749205218
exit
#1749205244
tmux kill-server 
#1749205256
tmux -f /dev/null 
#1749205277
clkear
#1749205281
exit 
#1749205292
clear
#1749205305
cd notebook-exercises/
#1749205306
lds 
#1749205331
vim notebook-exercises/120/main.c
#1749205382
./todo_finder.sh notebook-exercises/
#1749205420
vim notebook-exercises/98/main.c
#1749205448
vim 
#1749205454
vim notebook-exercises/102/main.c
#1749208380
./list-logged.sh 
#1749217996
man cat 
#1749218002
man 2 cat 
#1749218004
man cat
#1749289299
mkdir theory
#1749289301
cd theory/
#1749289307
mkdir semaphors
#1749289320
mkdir c_programs
#1749289321
cd c_programs/
#1749289340
touch README.md
#1749289343
vim README.md \
#1749289345
vim README.md 
#1749289391
mkdir 155
#1749289392
cd 155/
#1749289594
cp ../../../Makefile . 
#1749289638
mv 155 156
#1749289647
mkdir 157
#1749289649
cd 157
#1749289655
cp ../156/Makefile . 
#1749289662
vim main.c 
#1749289794
cd ../
#1749289825
ls
#1749289830
cd 157/
#1749289919
mkdir 158
#1749289921
cd 158
#1749289928
cp ../157/Makefile . 
#1749290168
make 
#1749290172
./main 
#1749290177
cd ../ 
#1749290184
mkdir 159
#1749290186
cd 159/
#1749290187
ls 
#1749290276
cp ../158/Makefile . 
#1749290280
vim main.c
#1749289662
vim main.c 
#1749289794
cd ../
#1749289825
ls
#1749289830
cd 157/
#1749289919
mkdir 158
#1749289921
cd 158
#1749289928
cp ../157/Makefile . 
#1749290172
./main 
#1749290184
mkdir 159
#1749290186
cd 159/
#1749290276
cp ../158/Makefile . 
#1749324314
clear
#1749324316
./list-logged.sh 
#1749324327
vim list-logged.sh 
#1749324376
make 
#1749324381
apropos make 
#1749324389
man 2 make 
#1749324392
man make 
#1749324477
cd ~
#1749324485
cd notebook-exercises/
#1749324486
l;s 
#1749324496
cd 100/
#1749324506
cd ../ 
#1749324510
cd 105/
#1749324573
ps 
#1749324576
ps aux 
#1749324591
gdb
#1749324632
ls 
#1749324635
vim main.c
#1749324652
exit 
#1749324506
cd ../ 
#1749324510
cd 105/
#1749324573
ps 
#1749324576
ps aux 
#1749324652
exit 
#1749330022
ls 
#1749330025
cd notebook-exercises/
#1749330026
cd 105
#1749330080
vim amin.c
#1749330112
./main /etc/passwd 
#1749330121
gcb ./main
#1749330129
gdb ./main
#1749330200
gdb ./main /etc/passwd
#1749330248
gdb
#1749330270
gdb ./main 
#1749330335
vim main.c
#1749330342
clear
#1749324573
ps 
#1749324576
ps aux 
#1749324591
gdb
#1749324652
exit 
#1749324658
cd notebook-exercises/
#1749324660
cd 105/
#1749324730
vim main.c
#1749324735
make 
#1749324749
cd ../ 
#1749324750
ls 
#1749326237
man dup2
#1749324573
ps 
#1749324576
ps aux 
#1749324652
exit 
#1749330025
cd notebook-exercises/
#1749330026
cd 105
#1749330080
vim amin.c
#1749330112
./main /etc/passwd 
#1749330121
gcb ./main
#1749330129
gdb ./main
#1749330200
gdb ./main /etc/passwd
#1749330248
gdb
#1749330270
gdb ./main 
#1749330342
clear
#1749324573
ps 
#1749324576
ps aux 
#1749324591
gdb
#1749324652
exit 
#1749324658
cd notebook-exercises/
#1749324660
cd 105/
#1749324749
cd ../ 
#1749326237
man dup2
#1749367312
cd theory/
#1749367319
cd 159/
#1749367321
./ma
#1749367383
./main \
#1749367425
make 
#1749367429
./main 
#1749369289
cd ../../
#1749369319
cd handfull_functions
#1749369323
mkdir handfull_functions
#1749369325
cd handfull_functions/
#1749369333
vim README.md
#1749372547
cd ../
#1749372550
rm -r handfull_functions/
#1749372557
cd c_programs/
#1749372563
vim 158
#1749372572
cd 158/
#1749372573
ls 
#1749372575
vim main.c
#1749324591
gdb
#1749324652
exit 
#1749324658
cd notebook-exercises/
#1749324660
cd 105/
#1749326237
man dup2
#1749367312
cd theory/
#1749367319
cd 159/
#1749367321
./ma
#1749367383
./main \
#1749367425
make 
#1749367429
./main 
#1749369289
cd ../../
#1749369319
cd handfull_functions
#1749369323
mkdir handfull_functions
#1749369325
cd handfull_functions/
#1749369333
vim README.md
#1749372550
rm -r handfull_functions/
#1749372557
cd c_programs/
#1749372563
vim 158
#1749372572
cd 158/
#1749401015
./list-logged.sh 
#1749401035
grep "Петя Петрова" /etc/passwd 
#1749401042
cd ../s0600311
#1749401051
cd Cfiles/
#1749401062
vim main.c
#1749401090
cd 2016-SE-04
#1749401099
cd 2023-CE-02
#1749401105
cd var/
#1749401109
cd log/
#1749401112
cd my_logs/
#1749401115
cd ../../../
#1749401117
cd ../
#1749401131
cd 2016-SE-06
#1749401150
cd files 
#1749401154
cat files 
#1749401169
cd 2017-IN-02
#1749401174
cd ../ 
#1749401175
ls 
#1749324477
cd ~
#1749324486
l;s 
#1749324496
cd 100/
#1749324510
cd 105/
#1749324573
ps 
#1749324576
ps aux 
#1749324591
gdb
#1749324652
exit 
#1749324510
cd 105/
#1749324573
ps 
#1749324576
ps aux 
#1749324652
exit 
#1749330026
cd 105
#1749330080
vim amin.c
#1749330112
./main /etc/passwd 
#1749330121
gcb ./main
#1749330129
gdb ./main
#1749330200
gdb ./main /etc/passwd
#1749330248
gdb
#1749330270
gdb ./main 
#1749330342
clear
#1749324573
ps 
#1749324576
ps aux 
#1749324591
gdb
#1749324652
exit 
#1749324660
cd 105/
#1749326237
man dup2
#1749324573
ps 
#1749324576
ps aux 
#1749324652
exit 
#1749330026
cd 105
#1749330080
vim amin.c
#1749330112
./main /etc/passwd 
#1749330121
gcb ./main
#1749330129
gdb ./main
#1749330200
gdb ./main /etc/passwd
#1749330248
gdb
#1749330270
gdb ./main 
#1749330342
clear
#1749324573
ps 
#1749324576
ps aux 
#1749324591
gdb
#1749324652
exit 
#1749324660
cd 105/
#1749326237
man dup2
#1749367312
cd theory/
#1749367319
cd 159/
#1749367321
./ma
#1749367383
./main \
#1749367429
./main 
#1749369319
cd handfull_functions
#1749369323
mkdir handfull_functions
#1749369325
cd handfull_functions/
#1749369333
vim README.md
#1749372550
rm -r handfull_functions/
#1749372557
cd c_programs/
#1749372563
vim 158
#1749372572
cd 158/
#1749324591
gdb
#1749324652
exit 
#1749324660
cd 105/
#1749326237
man dup2
#1749367312
cd theory/
#1749367319
cd 159/
#1749367321
./ma
#1749367383
./main \
#1749367429
./main 
#1749369319
cd handfull_functions
#1749369323
mkdir handfull_functions
#1749369325
cd handfull_functions/
#1749369333
vim README.md
#1749372550
rm -r handfull_functions/
#1749372557
cd c_programs/
#1749372563
vim 158
#1749372572
cd 158/
#1749401035
grep "Петя Петрова" /etc/passwd 
#1749401042
cd ../s0600311
#1749401051
cd Cfiles/
#1749401090
cd 2016-SE-04
#1749401099
cd 2023-CE-02
#1749401105
cd var/
#1749401109
cd log/
#1749401112
cd my_logs/
#1749401115
cd ../../../
#1749401131
cd 2016-SE-06
#1749401150
cd files 
#1749401154
cat files 
#1749401169
cd 2017-IN-02
#1749413010
mkdir custom_shell
#1749413012
cd custom_shell/
#1749422205
cd 98/
#1749424226
cp ../97/Makefile . 
#1749424553
maek 
#1749424839
./main data.bin comparator.bin 
#1749424888
rm data.bin 
#1749424890
rm data-orig.bin 
#1749424891
rm comparator.bin 
#1749424903
../../finder.sh  2022-SE-01
#1749424920
cp /home/students/s0600401/scripts/test_data/sample-data/03-c/2022-SE-01/comparator.bin . 
#1749424944
cp /home/students/s0600401/scripts/test_data/sample-data/03-c/2022-SE-01/data-orig.bin . 
#1749424961
cp /srv/fmi-os/data/03-c/2022-SE-01/data-orig.bin . 
#1749424964
cat data-orig.bin 
#1749424970
cat comparator.bin 
#1749427005
xxd data-orig.bin 
#1749427018
xxd copa
#1749427020
xxd comparator.bin 
#1749427247
./main data-orig.bin comparator.bin 
#1749427290
../../finder.sh  2022-SE-01 
#1749427299
xxd /srv/fmi-os/data/03-c/2022-SE-01/comparator.bin
#1749427311
xxd /srv/sample-data/03-c/2022-SE-01/data-orig.bin
#1749427336
make
#1749427362
cd 99/
#1749427384
./todo_finder.sh notebook-exercises/
#1749427415
cd notebook-exercises/
#1749427417
cd 103/
#1749427494
cd ../
#1749427495
cd 102/
#1749427642
cd 104/
#1749428401
cd 106/
#1749428467
cd ../ 
#1749428512
cd 101/
#1749428514
./main respect english.dic english.idx
#1749428540
./main friend english.dic 
#1749428554
./main cunt english.dic 
#1749428574
./main a english.dic 
#1749428579
./main b english.dic 
#1749428586
./main c english.dic 
#1749428658
./main tail  english.dic 
#1749428666
./main grandma english.dic 
#1749428674
./main respect english.dic 
#1749428680
./main wealth english.dic 
#1749428686
./main bitch english.dic 
#1749428691
./main game english.dic 
#1749428699
ls 
#1749428704
vim main.c
#1749428717
make 
#1749428746
cd ../../
#1749428748
./list-logged.sh 
#1749367383
./main \
#1749369319
cd handfull_functions
#1749369323
mkdir handfull_functions
#1749369325
cd handfull_functions/
#1749369333
vim README.md
#1749372550
rm -r handfull_functions/
#1749372557
cd c_programs/
#1749372563
vim 158
#1749372572
cd 158/
#1749401035
grep "Петя Петрова" /etc/passwd 
#1749401042
cd ../s0600311
#1749401051
cd Cfiles/
#1749401090
cd 2016-SE-04
#1749401099
cd 2023-CE-02
#1749401105
cd var/
#1749401109
cd log/
#1749401112
cd my_logs/
#1749401131
cd 2016-SE-06
#1749401150
cd files 
#1749401154
cat files 
#1749401169
cd 2017-IN-02
#1749413010
mkdir custom_shell
#1749413012
cd custom_shell/
#1749422205
cd 98/
#1749424226
cp ../97/Makefile . 
#1749424553
maek 
#1749424839
./main data.bin comparator.bin 
#1749424888
rm data.bin 
#1749424890
rm data-orig.bin 
#1749424891
rm comparator.bin 
#1749424903
../../finder.sh  2022-SE-01
#1749424920
cp /home/students/s0600401/scripts/test_data/sample-data/03-c/2022-SE-01/comparator.bin . 
#1749424944
cp /home/students/s0600401/scripts/test_data/sample-data/03-c/2022-SE-01/data-orig.bin . 
#1749424961
cp /srv/fmi-os/data/03-c/2022-SE-01/data-orig.bin . 
#1749424964
cat data-orig.bin 
#1749424970
cat comparator.bin 
#1749427005
xxd data-orig.bin 
#1749427018
xxd copa
#1749427020
xxd comparator.bin 
#1749427247
./main data-orig.bin comparator.bin 
#1749427290
../../finder.sh  2022-SE-01 
#1749427299
xxd /srv/fmi-os/data/03-c/2022-SE-01/comparator.bin
#1749427311
xxd /srv/sample-data/03-c/2022-SE-01/data-orig.bin
#1749427336
make
#1749427362
cd 99/
#1749427384
./todo_finder.sh notebook-exercises/
#1749427415
cd notebook-exercises/
#1749427417
cd 103/
#1749427495
cd 102/
#1749427642
cd 104/
#1749428401
cd 106/
#1749428512
cd 101/
#1749428514
./main respect english.dic english.idx
#1749428540
./main friend english.dic 
#1749428554
./main cunt english.dic 
#1749428574
./main a english.dic 
#1749428579
./main b english.dic 
#1749428586
./main c english.dic 
#1749428658
./main tail  english.dic 
#1749428666
./main grandma english.dic 
#1749428674
./main respect english.dic 
#1749428680
./main wealth english.dic 
#1749428686
./main bitch english.dic 
#1749428691
./main game english.dic 
#1749428746
cd ../../
#1749428748
./list-logged.sh 
#1749460674
cd theory/
#1749460675
lds 
#1749460678
cd semaphors/
#1749460689
mkdir readers_writes_problem
#1749460691
cd readers_writes_problem/
#1749460864
mkdir first_solution
#1749460865
cd fio
#1749461608
cp ../../../../Makefile . 
#1749462030
maker 
#1749462205
cd ../
#1749462226
cp readers_writes_problem/ readers_and_writes_problem_writers_starvation
#1749462232
cp -r readers_writes_problem/ readers_and_writes_problem_writers_starvation
#1749462239
rm -r readers_writes_problem/
#1749462256
cd first_solution/
#1749462275
find first_solution/ -exec cp {} .
#1749462281
find first_solution/ -exec cp {} . ";"
#1749462300
find first_solution/
#1749462323
find first_solution/ -exec ls 
#1749462326
find first_solution/ -exec {}
#1749462331
find first_solution/ -exec {} cp {} .
#1749462339
man find
#1749462364
find first_solution/ -exec
#1749462367
find first_solution/ -exec {} 
#1749462371
find first_solution/ -exec {} echo {}
#1749462374
find first_solution/ -exec {} echo {} ";"
#1749462416
rm 'em_destroy(&mutex);'
#1749462419
rm first_solution/
#1749462422
rm -r first_solution/
#1749472806
dc ../ 
#1749472823
mkdir readers_and_writers_problem
#1749472833
cp readers_and_writes_problem_writers_starvation/ readers_and_writers_problem/
#1749472838
cp -r readers_and_writes_problem_writers_starvation/ readers_and_writers_problem/
#1749472849
find readers_and_writes_problem_writers_starvation/
#1749472853
rm readers_and_writers_problem/
#1749472855
rm -r readers_and_writers_problem/
#1749473682
cd readers_and_writes_problem_writers_starvation/
#1749473683
ls 
#1749473757
make 
#1749473760
./main 
#1749473787
vim main.c
#1749479095
../../../list-logged.sh 
#1749479116
grep "Ева" /etc/passwd 
#1749479127
cd ../../../../s0600300
#1749479143
cd ../../../../s0600304
#1749479146
cd ../../../../s0600299
#1749479150
cd ../../../../s0600314
#1749479153
cd ../../../../s0600315
#1749479154
cd ../../../../s0600316
#1749479155
cd ../../../../s0600317
#1749479158
cd ../../../../s0600319
#1749479164
cd ../../../
#1749479166
cd ../ 
#1749479167
find
#1749479233
clear
#1749479254
grep "s0600401"/etc/passwd 
#1749479257
grep "s0600401" /etc/passwd 
#1749479154
cd ../../../../s0600316
#1749479155
cd ../../../../s0600317
#1749479158
cd ../../../../s0600319
#1749479164
cd ../../../
#1749479167
find
#1749479233
clear
#1749479254
grep "s0600401"/etc/passwd 
#1749479257
grep "s0600401" /etc/passwd 
#1749483410
./list-logged.sh 
#1749483420
cd theory/
#1749483422
cd semaphors/
#1749483449
mkdir readers_and_writers_problem
#1749483453
cd readers_and_writes_problem_writers_starvation/
#1749483473
mv -r readers_and_writes_problem_writers_starvation/ readers_and_writers_problem/
#1749483477
mv  readers_and_writes_problem_writers_starvation/ readers_and_writers_problem/
#1749483483
cd readers_and_writers_problem/
#1749483486
cd ../ 
#1749483487
ls 
#1749483477
mv  readers_and_writes_problem_writers_starvation/ readers_and_writers_problem/
#1749483486
cd ../ 
#1749483487
ls 
#1749548485
./list-logged.sh 
#1749548494
cd theory/
#1749548499
cd sw
#1749548502
cd semaphors/
#1749548508
cd readers_and_writers_problem/
#1749548513
cd readers_and_writes_problem_writers_starvation/
#1749548515
ls
#1749548524
./main 
#1749479153
cd ../../../../s0600315
#1749479154
cd ../../../../s0600316
#1749479155
cd ../../../../s0600317
#1749479158
cd ../../../../s0600319
#1749479164
cd ../../../
#1749479167
find
#1749479254
grep "s0600401"/etc/passwd 
#1749479257
grep "s0600401" /etc/passwd 
#1749479154
cd ../../../../s0600316
#1749479155
cd ../../../../s0600317
#1749479158
cd ../../../../s0600319
#1749479164
cd ../../../
#1749479167
find
#1749479254
grep "s0600401"/etc/passwd 
#1749479257
grep "s0600401" /etc/passwd 
#1749483410
./list-logged.sh 
#1749483449
mkdir readers_and_writers_problem
#1749483453
cd readers_and_writes_problem_writers_starvation/
#1749483473
mv -r readers_and_writes_problem_writers_starvation/ readers_and_writers_problem/
#1749483477
mv  readers_and_writes_problem_writers_starvation/ readers_and_writers_problem/
#1749483483
cd readers_and_writers_problem/
#1749483477
mv  readers_and_writes_problem_writers_starvation/ readers_and_writers_problem/
#1749548485
./list-logged.sh 
#1749548499
cd sw
#1749548508
cd readers_and_writers_problem/
#1749548513
cd readers_and_writes_problem_writers_starvation/
#1749548515
ls
#1749613725
clear
#1749613728
cd theory/
#1749613731
cd semaphors/
#1749613749
rm ~/.local/share/nvim/swap//%home%students%s0600302%theory%semaphors%dining_philosophers_problem%main.c.swp
#1749613887
cat ../producer_consumer_problem/main.c 
#1749613908
make 
#1749613911
./main 
#1749613940
vim README.md
#1749613981
cat README.md 
#1749613991
cd ../ 
#1749614044
git commit -m "adding philosophers exercise and code refactoring"
#1749614135
cd dining_philosophers_problem/
#1749614137
vim main.c
#1749614188
git add . 
#1749614189
git status \
#1749614190
git status 
#1749614204
git commit -m "refoctoring"
#1749614207
git push origin master 
#1749614217
ls 
#1749614220
./list
#1749614225
../../../list-logged.sh 
#1749614227
exit 
#1749205454
vim notebook-exercises/102/main.c
#1749217996
man cat 
#1749218002
man 2 cat 
#1749218004
man cat
#1749205281
exit 
#1749205203
bind -f /etc/inputrc 
#1749205210
2;76;44M2;76;44m2;76;44M2;76;44m2;76;44M34;76;44M2;76;44m2;76;44M2;76;44m2;76;44M2;76;44m2;77;44M2;77;44m2;77;44M2;77;44m
#1749205216
restart
#1749205218
exit
#1749205244
tmux kill-server 
#1749205256
tmux -f /dev/null 
#1749205277
clkear
#1749205281
exit 
#1749205306
lds 
#1749205331
vim notebook-exercises/120/main.c
#1749205382
./todo_finder.sh notebook-exercises/
#1749205420
vim notebook-exercises/98/main.c
#1749205448
vim 
#1749205454
vim notebook-exercises/102/main.c
#1749217996
man cat 
#1749218002
man 2 cat 
#1749218004
man cat
#1749289299
mkdir theory
#1749289307
mkdir semaphors
#1749289320
mkdir c_programs
#1749289321
cd c_programs/
#1749289340
touch README.md
#1749289343
vim README.md \
#1749289391
mkdir 155
#1749289392
cd 155/
#1749289594
cp ../../../Makefile . 
#1749289638
mv 155 156
#1749289647
mkdir 157
#1749289649
cd 157
#1749289655
cp ../156/Makefile . 
#1749289830
cd 157/
#1749289919
mkdir 158
#1749289921
cd 158
#1749289928
cp ../157/Makefile . 
#1749290184
mkdir 159
#1749290186
cd 159/
#1749290276
cp ../158/Makefile . 
#1749289830
cd 157/
#1749289919
mkdir 158
#1749289921
cd 158
#1749289928
cp ../157/Makefile . 
#1749290184
mkdir 159
#1749290186
cd 159/
#1749290276
cp ../158/Makefile . 
#1749324327
vim list-logged.sh 
#1749324381
apropos make 
#1749324389
man 2 make 
#1749324392
man make 
#1749324477
cd ~
#1749324486
l;s 
#1749324496
cd 100/
#1749324510
cd 105/
#1749324576
ps aux 
#1749324591
gdb
#1749324652
exit 
#1749324510
cd 105/
#1749324576
ps aux 
#1749324652
exit 
#1749330026
cd 105
#1749330112
./main /etc/passwd 
#1749330121
gcb ./main
#1749330129
gdb ./main
#1749330200
gdb ./main /etc/passwd
#1749330248
gdb
#1749330270
gdb ./main 
#1749324576
ps aux 
#1749324591
gdb
#1749324652
exit 
#1749324660
cd 105/
#1749326237
man dup2
#1749324576
ps aux 
#1749324652
exit 
#1749330026
cd 105
#1749330112
./main /etc/passwd 
#1749330121
gcb ./main
#1749330129
gdb ./main
#1749330200
gdb ./main /etc/passwd
#1749330248
gdb
#1749330270
gdb ./main 
#1749324576
ps aux 
#1749324591
gdb
#1749324652
exit 
#1749324660
cd 105/
#1749326237
man dup2
#1749367319
cd 159/
#1749367321
./ma
#1749367383
./main \
#1749369319
cd handfull_functions
#1749369323
mkdir handfull_functions
#1749369325
cd handfull_functions/
#1749372550
rm -r handfull_functions/
#1749372557
cd c_programs/
#1749372563
vim 158
#1749372572
cd 158/
#1749324591
gdb
#1749324652
exit 
#1749324660
cd 105/
#1749326237
man dup2
#1749367319
cd 159/
#1749367321
./ma
#1749367383
./main \
#1749369319
cd handfull_functions
#1749369323
mkdir handfull_functions
#1749369325
cd handfull_functions/
#1749372550
rm -r handfull_functions/
#1749372557
cd c_programs/
#1749372563
vim 158
#1749372572
cd 158/
#1749401035
grep "Петя Петрова" /etc/passwd 
#1749401042
cd ../s0600311
#1749401051
cd Cfiles/
#1749401090
cd 2016-SE-04
#1749401099
cd 2023-CE-02
#1749401105
cd var/
#1749401109
cd log/
#1749401112
cd my_logs/
#1749401115
cd ../../../
#1749401131
cd 2016-SE-06
#1749401150
cd files 
#1749401154
cat files 
#1749401169
cd 2017-IN-02
#1749324477
cd ~
#1749324486
l;s 
#1749324496
cd 100/
#1749324510
cd 105/
#1749324576
ps aux 
#1749324591
gdb
#1749324652
exit 
#1749324510
cd 105/
#1749324576
ps aux 
#1749324652
exit 
#1749330026
cd 105
#1749330112
./main /etc/passwd 
#1749330121
gcb ./main
#1749330129
gdb ./main
#1749330200
gdb ./main /etc/passwd
#1749330248
gdb
#1749330270
gdb ./main 
#1749324576
ps aux 
#1749324591
gdb
#1749324652
exit 
#1749324660
cd 105/
#1749326237
man dup2
#1749324576
ps aux 
#1749324652
exit 
#1749330026
cd 105
#1749330112
./main /etc/passwd 
#1749330121
gcb ./main
#1749330129
gdb ./main
#1749330200
gdb ./main /etc/passwd
#1749330248
gdb
#1749330270
gdb ./main 
#1749324576
ps aux 
#1749324591
gdb
#1749324652
exit 
#1749324660
cd 105/
#1749326237
man dup2
#1749367319
cd 159/
#1749367321
./ma
#1749367383
./main \
#1749369319
cd handfull_functions
#1749369323
mkdir handfull_functions
#1749369325
cd handfull_functions/
#1749372550
rm -r handfull_functions/
#1749372557
cd c_programs/
#1749372563
vim 158
#1749372572
cd 158/
#1749324591
gdb
#1749324652
exit 
#1749324660
cd 105/
#1749326237
man dup2
#1749367319
cd 159/
#1749367321
./ma
#1749367383
./main \
#1749369319
cd handfull_functions
#1749369323
mkdir handfull_functions
#1749369325
cd handfull_functions/
#1749372550
rm -r handfull_functions/
#1749372557
cd c_programs/
#1749372563
vim 158
#1749372572
cd 158/
#1749401035
grep "Петя Петрова" /etc/passwd 
#1749401042
cd ../s0600311
#1749401051
cd Cfiles/
#1749401090
cd 2016-SE-04
#1749401099
cd 2023-CE-02
#1749401105
cd var/
#1749401109
cd log/
#1749401112
cd my_logs/
#1749401115
cd ../../../
#1749401131
cd 2016-SE-06
#1749401150
cd files 
#1749401154
cat files 
#1749401169
cd 2017-IN-02
#1749413010
mkdir custom_shell
#1749413012
cd custom_shell/
#1749422205
cd 98/
#1749424226
cp ../97/Makefile . 
#1749424553
maek 
#1749424839
./main data.bin comparator.bin 
#1749424888
rm data.bin 
#1749424890
rm data-orig.bin 
#1749424891
rm comparator.bin 
#1749424903
../../finder.sh  2022-SE-01
#1749424920
cp /home/students/s0600401/scripts/test_data/sample-data/03-c/2022-SE-01/comparator.bin . 
#1749424944
cp /home/students/s0600401/scripts/test_data/sample-data/03-c/2022-SE-01/data-orig.bin . 
#1749424961
cp /srv/fmi-os/data/03-c/2022-SE-01/data-orig.bin . 
#1749424964
cat data-orig.bin 
#1749424970
cat comparator.bin 
#1749427005
xxd data-orig.bin 
#1749427018
xxd copa
#1749427020
xxd comparator.bin 
#1749427247
./main data-orig.bin comparator.bin 
#1749427290
../../finder.sh  2022-SE-01 
#1749427299
xxd /srv/fmi-os/data/03-c/2022-SE-01/comparator.bin
#1749427311
xxd /srv/sample-data/03-c/2022-SE-01/data-orig.bin
#1749427362
cd 99/
#1749427384
./todo_finder.sh notebook-exercises/
#1749427417
cd 103/
#1749427495
cd 102/
#1749427642
cd 104/
#1749428401
cd 106/
#1749428514
./main respect english.dic english.idx
#1749428540
./main friend english.dic 
#1749428554
./main cunt english.dic 
#1749428574
./main a english.dic 
#1749428579
./main b english.dic 
#1749428586
./main c english.dic 
#1749428658
./main tail  english.dic 
#1749428666
./main grandma english.dic 
#1749428674
./main respect english.dic 
#1749428680
./main wealth english.dic 
#1749428686
./main bitch english.dic 
#1749428691
./main game english.dic 
#1749367383
./main \
#1749369319
cd handfull_functions
#1749369323
mkdir handfull_functions
#1749369325
cd handfull_functions/
#1749372550
rm -r handfull_functions/
#1749372557
cd c_programs/
#1749372563
vim 158
#1749372572
cd 158/
#1749401035
grep "Петя Петрова" /etc/passwd 
#1749401042
cd ../s0600311
#1749401051
cd Cfiles/
#1749401090
cd 2016-SE-04
#1749401099
cd 2023-CE-02
#1749401105
cd var/
#1749401109
cd log/
#1749401112
cd my_logs/
#1749401131
cd 2016-SE-06
#1749401150
cd files 
#1749401154
cat files 
#1749401169
cd 2017-IN-02
#1749413010
mkdir custom_shell
#1749413012
cd custom_shell/
#1749422205
cd 98/
#1749424226
cp ../97/Makefile . 
#1749424553
maek 
#1749424839
./main data.bin comparator.bin 
#1749424888
rm data.bin 
#1749424890
rm data-orig.bin 
#1749424891
rm comparator.bin 
#1749424903
../../finder.sh  2022-SE-01
#1749424920
cp /home/students/s0600401/scripts/test_data/sample-data/03-c/2022-SE-01/comparator.bin . 
#1749424944
cp /home/students/s0600401/scripts/test_data/sample-data/03-c/2022-SE-01/data-orig.bin . 
#1749424961
cp /srv/fmi-os/data/03-c/2022-SE-01/data-orig.bin . 
#1749424964
cat data-orig.bin 
#1749424970
cat comparator.bin 
#1749427005
xxd data-orig.bin 
#1749427018
xxd copa
#1749427020
xxd comparator.bin 
#1749427247
./main data-orig.bin comparator.bin 
#1749427290
../../finder.sh  2022-SE-01 
#1749427299
xxd /srv/fmi-os/data/03-c/2022-SE-01/comparator.bin
#1749427311
xxd /srv/sample-data/03-c/2022-SE-01/data-orig.bin
#1749427362
cd 99/
#1749427384
./todo_finder.sh notebook-exercises/
#1749427417
cd 103/
#1749427495
cd 102/
#1749427642
cd 104/
#1749428401
cd 106/
#1749428514
./main respect english.dic english.idx
#1749428540
./main friend english.dic 
#1749428554
./main cunt english.dic 
#1749428574
./main a english.dic 
#1749428579
./main b english.dic 
#1749428586
./main c english.dic 
#1749428658
./main tail  english.dic 
#1749428666
./main grandma english.dic 
#1749428674
./main respect english.dic 
#1749428680
./main wealth english.dic 
#1749428686
./main bitch english.dic 
#1749428691
./main game english.dic 
#1749460675
lds 
#1749460689
mkdir readers_writes_problem
#1749460691
cd readers_writes_problem/
#1749460864
mkdir first_solution
#1749460865
cd fio
#1749461608
cp ../../../../Makefile . 
#1749462030
maker 
#1749462226
cp readers_writes_problem/ readers_and_writes_problem_writers_starvation
#1749462232
cp -r readers_writes_problem/ readers_and_writes_problem_writers_starvation
#1749462239
rm -r readers_writes_problem/
#1749462256
cd first_solution/
#1749462275
find first_solution/ -exec cp {} .
#1749462281
find first_solution/ -exec cp {} . ";"
#1749462300
find first_solution/
#1749462323
find first_solution/ -exec ls 
#1749462326
find first_solution/ -exec {}
#1749462331
find first_solution/ -exec {} cp {} .
#1749462339
man find
#1749462364
find first_solution/ -exec
#1749462367
find first_solution/ -exec {} 
#1749462371
find first_solution/ -exec {} echo {}
#1749462374
find first_solution/ -exec {} echo {} ";"
#1749462416
rm 'em_destroy(&mutex);'
#1749462419
rm first_solution/
#1749462422
rm -r first_solution/
#1749472806
dc ../ 
#1749472823
mkdir readers_and_writers_problem
#1749472833
cp readers_and_writes_problem_writers_starvation/ readers_and_writers_problem/
#1749472838
cp -r readers_and_writes_problem_writers_starvation/ readers_and_writers_problem/
#1749472849
find readers_and_writes_problem_writers_starvation/
#1749472853
rm readers_and_writers_problem/
#1749472855
rm -r readers_and_writers_problem/
#1749479116
grep "Ева" /etc/passwd 
#1749479127
cd ../../../../s0600300
#1749479143
cd ../../../../s0600304
#1749479146
cd ../../../../s0600299
#1749479150
cd ../../../../s0600314
#1749479153
cd ../../../../s0600315
#1749479154
cd ../../../../s0600316
#1749479155
cd ../../../../s0600317
#1749479158
cd ../../../../s0600319
#1749479164
cd ../../../
#1749479167
find
#1749479254
grep "s0600401"/etc/passwd 
#1749479257
grep "s0600401" /etc/passwd 
#1749479154
cd ../../../../s0600316
#1749479155
cd ../../../../s0600317
#1749479158
cd ../../../../s0600319
#1749479164
cd ../../../
#1749479167
find
#1749479254
grep "s0600401"/etc/passwd 
#1749479257
grep "s0600401" /etc/passwd 
#1749483449
mkdir readers_and_writers_problem
#1749483473
mv -r readers_and_writes_problem_writers_starvation/ readers_and_writers_problem/
#1749483477
mv  readers_and_writes_problem_writers_starvation/ readers_and_writers_problem/
#1749483477
mv  readers_and_writes_problem_writers_starvation/ readers_and_writers_problem/
#1749548499
cd sw
#1749586718
../../../../list-logged.sh 
#1749587074
mkdir readers_and_writers_problem_no_starvation_turnstile
#1749587097
cp ../readers_and_writes_problem_writers_starvation/Makefile  . 
#1749587891
im main.c
#1749587984
cat ../readers_and_writes_problem_writers_starvation/main.c
#1749588715
vim main.c 
#1749589191
int main(void){
#1749589191
    int readers_ids[]= {1,2,3,4,5};
#1749589191
    int writers_ids[] = {1,2,3};
#1749589191
    pthread_t treades[5];
#1749589191
    pthread_t twrites[5];
#1749589191
    sem_init(&mutex, 0, 1);
#1749589191
    sem_init(&write_lock, 0, 1);
#1749589191
        for(int i = 0; i < 5; i++)
#1749589191
        pthread_create(&treades[i], NULL, reader, &readers_ids[i]);
#1749589191
    for (int i = 0; i < 2; i++)
#1749589191
        pthread_create(&twrites[i], NULL, writer, &writers_ids[i]);
#1749589191
    for (int i = 0; i < 5; i++)
#1749589191
        pthread_join(twrites[i], NULL);
#1749589191
    for (int i = 0; i < 3; i++)
#1749589191
        pthread_join(treades[i], NULL);
#1749589191
    sem_destroy(&mutex);
#1749589191
    sem_destroy(&write_lock);
#1749589238
}
#1749589240
clear
#1749589640
cd readers_and_writes_problem_writers_starvation/
#1749589665
make vim main.c
#1749589692
cd ../
#1749589701
cd readers_and_writers_problem_no_starvation_turnstile/
#1749589782
mkdir readers_and_writers_readers_starvation
#1749589978
make \
#1749589998
cd readers_and_writers_readers_starvation/
#1749590008
cp ../readers_and_writers_problem_no_starvation_turnstile/Makefile .
#1749597276
git remote set-url origin https://github.com/Pavel-Petkov03/OS.git
#1749597281
git push -u origin main
#1749597291
git pll origin master 
#1749597455
 unable to access 'https://github.com/Pavel-Petkov03/OS.git/': The requested URL returned error: 403
#1749597935
git branch 
#1749597944
git push -u origin master
#1749597947
git pull 
#1749597991
git pull origin main
#1749598231
git add .
#1749598258
git add Makefile 
#1749598396
cd notebook-exercises/
#1749598399
cd 101/
#1749598403
rm english.dic 
#1749598406
cd ../../
#1749598423
git add .bash_history 
#1749598453
git commit -m "adding all work from astero"
#1749598702
for file in $(git ls-files --others --exclude-standard); do   git add "$file";   git commit -m "Created $file"; done
#1749598743
git pull
#1749598893
for file in $(git ls-files --others --modified --exclude-standard); do   git add "$file";   git commit -m "Add $file"; done
#1749598995
git push --force origin master
#1749599335
vim .gitignore
#1749599427
vim .gitignore 
#1749599498
git add .gitignore 
#1749599560
git rm -r --cached .
#1749599572
git rm -f -r --cached .
#1749599649
for file in *; do   if [ -f "$file" ]; then     # only files, skip directories
    git add "$file";     git commit -m "Add or update file: $file";   fi; done
#1749599751
git reset --soft HEAD~1
#1749599754
git reset
#1749599760
for file in $(git ls-files --others --modified --exclude-standard); do   git add "$file";   git commit -m "Add $file"; done
#1749599854
git pull --no-rebase
#1749599870
git pull --no-rebase origin master
#1749599924
sc
#1749599992
git add todo_finder.sh 
#1749600059
git gc --prune=now --aggressive
#1749600134
rm .git/
#1749600138
rm -r .git/
#1749600286
for file in *; do   if [ -f "$file" ]; then     # only files, skip directories
    git add "$file";     git commit -m "Add or update file: $file";   fi; done
#1749600309
for file in *; do   if [ -f "$file" ]; then     # only files, skip directories
    git add "$file";     git commit -m "Add or update file: $file";   fi; done
#1749600325
for file in *; do   if [ -f "$file" ]; then     # only files, skip directories
    git add "$file";     git commit -m "Add or update file: $file";   fi; done
#1749600333
git stauts 
#1749600353
for file in *; do   if [ -f "$file" ]; then     # only files, skip directories
    git add "$file";     git commit -m "Add or update file: $file";   fi; done
#1749600388
find . -type f -print0 | while IFS= read -r -d '' file; do   git add "$file";   git commit -m "Add or update file: $file"; done
#1749600436
git push -f origin master
#1749600886
git blame
#1749600931
git blame https://github.com/Pavel-Petkov03/OS
#1749600938
git blame https://github.com/Pavel-Petkov03/OS.git
#1749600990
git log 9acf5def7f60d16f94bd7ce95f2453ef70f08d65
#1749601053
git config --global user.email "pavel.petkov2003@gmail.com"
#1749601062
git config --global user.name "Pavel Petkov"
#1749601098
git log
#1749601118
git log --author="Pavel Petkov"
#1749601142
git log --author="Pavel-Petkov03"
#1749601217
git show 9acf5def7f60d16f94bd7ce95f2453ef70f08d65
#1749601319
git show 6817294351efdba0d1d863c2fb041558221a0f4b
#1749601447
git filter-branch --env-filter '
OLD_EMAIL="s0600302@astero.openfmi.net"
CORRECT_NAME="Pavel Petkov"
CORRECT_EMAIL="elias5247698@abv.bg"

if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
#1749601476
de
#1749601478
dq
#1749601480
dc
#1749601500
df -h
#1749601551
rm -rf .git/
#1749601554
du
#1749601566
git init 
#1749601604
git remote add origin https://github.com/Pavel-Petkov03/OS.git
#1749601620
git filter-branch --env-filter '
OLD_EMAIL="s0600302@astero.openfmi.net"
CORRECT_NAME="Pavel Petkov"
CORRECT_EMAIL="elias5247698@abv.bg"

if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
#1749601646
git pull origin master
#1749601661
git filter-branch --env-filter '
OLD_EMAIL="s0600302@astero.openfmi.net"
CORRECT_NAME="Pavel Petkov"
CORRECT_EMAIL="elias5247698@abv.bg"

if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
#1749601726
git pull origin master 
#1749601742
git pull -f origin master
#1749601805
git log 
#1749601811
git fetch --all
#1749601812
git reset --hard origin/main
#1749601821
git reset --hard origin/master
#1749601848
git filter-branch --env-filter '
OLD_EMAIL="s0600302@astero.openfmi.net"
CORRECT_NAME="Pavel Petkov"
CORRECT_EMAIL="elias5247698@abv.bg"

if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
#1749601882
git push --force --tags or
#1749601900
git push --force --tags origin master
#1749602104
who
#1749602116
./list-logged.sh 
#1749602314
git add .gitconfig 
#1749602343
git config --global user.email
#1749602350
pavel.petkov2003@gmail.com
#1749602355
git config --list
#1749602366
git push origin mqaster 
#1749602369
git push origin maste 
#1749602405
git commit -m "adding gitignore"
#1749602454
ds
#1749602457
df 0-f 
#1749602458
df 0f 
#1749602462
df
#1749602464
df -f 
#1749602478
dui 
#1749602479
du 
#1749602850
cd theory/
#1749602852
cd semaphors/
#1749602855
cd readers_and_writers_problem/
#1749602864
cd README.md 
#1749602868
vim README.md 
#1749602944
git commit -m "adding readme for readers writers"
#1749603104
cd readers_and_writers_readers_starvation
#1749603109
git main.c 
#1749603326
vim ../readers_and_writers_problem_no_starvation_turnstile/
#1749603332
vim ../readers_and_writers_problem_no_starvation_turnstile/main.c
#1749603363
cat ../readers_and_writers_problem_no_starvation_turnstile/main.c
#1749603871
vim amin.c
#1749604355
cat main.c
#1749604572
./a
#1749604684
git 
#1749604689
gut status 
#1749604707
git commit -m "adding final for readers and writers(readers starvation)"
#1749605656
../../list-logged.sh 
#1749605872
mkdir producer_consumer_problem
#1749606119
ls
#1749606127
vim README.md
#1749606338
mv README.md producer_consumer_problem
#1749606355
git commit -m "Starting producer consumer problem"
#1749606360
git push origin master
#1749607637
cat ../readers_and_writers_problem/readers_and_writers_problem_no_starvation_turnstile/main.c 
#1749607852
cp ../readers_and_writers_problem/readers_and_writers_problem_no_starvation_turnstile/Makefile . 
#1749607906
make
#1749608093
rm 23q 
#1749608096
cat README.md 
#1749608113
vim infinite_buffer_solution.py
#1749609203
ps 
#1749609305
vim infinite_buffer_solution.py 
#1749609378
git add . 
#1749609393
git commit -m "adding solutions for producer consumer problem"
#1749609397
git push origin master 
#1749609412
./list
#1749609422
../../list
#1749609427
../../../list-logged.sh 
#1749609486
git status 
#1749609976
mkdir dining_philosophers_problem
#1749609981
cd producer_consumer_problem/
#1749609987
cat if
#1749609991
cat infinite_buffer_solution.py 
#1749610306
cd ../ 
#1749610309
cd dining_philosophers_problem/
#1749611679
python3 infinite_buffer_solution.py 
#1749612914
vim ../producer_consumer_problem/main.c 
#1749612930
cat ../producer_consumer_problem/main.c 
#1749612942
vim vim main.c
#1749613260
cp ../producer_consumer_problem/Makefile . 
#1749613261
ls 
#1749613481
cat main.c 
#1749613570
make 
#1749613572
./main 
#1749613599
vim main.c
#1749609981
cd producer_consumer_problem/
#1749609987
cat if
#1749609991
cat infinite_buffer_solution.py 
#1749610306
cd ../ 
#1749610309
cd dining_philosophers_problem/
#1749611679
python3 infinite_buffer_solution.py 
#1749612914
vim ../producer_consumer_problem/main.c 
#1749612930
cat ../producer_consumer_problem/main.c 
#1749612942
vim vim main.c
#1749613260
cp ../producer_consumer_problem/Makefile . 
#1749613481
cat main.c 
#1749613570
make 
#1749613572
./main 
#1749613599
vim main.c
#1749635843
../list
#1749635845
./list-logged.sh 
#1749636161
cd students/
#1749636162
who
#1749636168
cd s0600311
#1749636175
cd 2017-SE-06
#1749636179
vim solution.sh 
#1749636220
cd 2023-CE-02
#1749636225
cd var/
#1749636230
cd log/
#1749636233
cd my_logs/
#1749636237
cd ../../../
#1749636249
cd 2023-CE-01
#1749636250
ls 
#1749636253
vim solution.sh
#1749636261
cd ../../
#1749636263
cd ../
#1749636249
cd 2023-CE-01
#1749636253
vim solution.sh
#1749636261
cd ../../
#1749636263
cd ../
#1749655937
./list-logged.sh 
#1749658412
who 
#1749658434
grep "Ивайло" /etc/passwd 
#1749658452
cd ../s0600305
#1749658497
cd ~!
#1749658499
cd ~
#1749658509
cd theory/
#1749658511
cd semaphors/
#1749658512
ls 
#1749681352
cd chat_room/
#1749681355
cd client/
#1749681358
./main mavkata
#1749681562
exit 
#1749681341
cd chat_room/
#1749681342
cd client/
#1749681345
./main pavkata
#1749681563
exit
#1749681333
cd chat_room/
#1749681335
cd server/
#1749681336
./main 
#1749681564
exit
#1749681531
cd chat_room/
#1749681532
cd client/
#1749681536
./main baba
#1749681565
exut 
#1749681566
exit 
#1749658497
cd ~!
#1749658509
cd theory/
#1749658511
cd semaphors/
#1749681568
./list-logged.sh 
#1749681589
cd notebook-exercises/
#1749681596
cd 121/
#1749681601
./main input.bin 
#1749681646
cd ~
#1749681648
ls 
