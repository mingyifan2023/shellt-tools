# 查询当前目录下的所有文件 文件大小 du -sh *


第一种：cat /dev/null > ./nohup.log
第二种：>./nohup.log
第三种：echo "" >./nohup.log  或者 echo >./nohup.log
第四种：:>./nohup.log（脚本中常用）
第五种：cp /dev/null ./nohup.log
第六种：dd if=/dev/null of=./nohup.log （if表示输入文件，of表示输出文件）
第七种：dd if=/dev/null of=./nohup.log （if表示输入文件，of表示输出文件）

