# cat <<EOF >> ~/.bashrc
# alias phistory="history | awk '{CMD[\$2]++;count++;} END { for (a in CMD) print CMD[a] \" \" CMD[a]/count*100 \"% \" a;}' | grep -v './' | column -c3 -s ' ' -t | sort -nr | nl | head -n10"
# EOF
# source ~/.bashrc


echo "alias phistory=\"history | awk '{CMD[\$2]++;count++;} END { for (a in CMD) print CMD[a] \" \" CMD[a]/count*100 \"% \" a;}' |" >> ~/.bashrc
echo "grep -v './' | column -c3 -s ' ' -t | sort -nr | nl | head -n10\"" >> ~/.bashrc
source ~/.bashrc
