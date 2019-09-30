#

ssh-keygen  #提示输入时，一直按回车即可

ssh-copy-id -i ~/.ssh/id_rsa.pub root@192.168.135.102  #成功会提示输入远程机器密码。

#然后就可以无密码ssh了，比如：
ssh app@192.168.1.204  "cd ~; touch tt"