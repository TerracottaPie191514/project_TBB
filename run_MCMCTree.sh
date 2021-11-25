#!/bin/bash
#set -ex
mkdir run01 run02
echo "Calculating substitution times 1"
mcmctree *.ctl
rm out.BV rst
mv tmp*.* rub rst* lnf out.* SeedUsed run01
cp *.ctl *.nw *.fa wag.dat run01
cd run01
sed -i -r 's/(^model\s+=\s+)0/\12/' tmp0001.ctl
sed -i -r 's/(^aaRatefile\s+=\s)/\1wag.dat\nfix_alpha = 0\nalpha = .5\nncatG = 4/' tmp0001.ctl
codeml tmp0001.ctl
mv rst2 in.BV
rm -f tmp0001.ctl
sed -i -r 's/(^usedata\s+=\s+)3/\12 in.BV/' *.ctl
echo "Running MCMCTree 1"
mcmctree MCMCTree.ctl
echo "Acquiring posterior means 1"
cat out.txt |awk '/t_n/ {print$2}' > posterior_means.txt
cd ..
echo "Calculating substitution times 2"
mcmctree *.ctl
rm out.BV rst
mv tmp*.* rub rst* lnf out.* SeedUsed run02
cp *.ctl *.nw *.fa wag.dat run02
cd run02
sed -i -r 's/(^model\s+=\s+)0/\12/' tmp0001.ctl
sed -i -r 's/(^aaRatefile\s+=\s)/\1wag.dat\nfix_alpha = 0\nalpha = .5\nncatG = 4/' tmp0001.ctl
codeml tmp0001.ctl
mv rst2 in.BV
rm tmp0001.ctl
sed -i -r 's/(^usedata\s+=\s+)3/\12 in.BV/' *.ctl
echo "Running MCMCTree 2"
mcmctree *.ctl
echo "Acquiring posterior means 2"
cat out.txt |awk '/t_n/ {print$2}' > posterior_means.txt
