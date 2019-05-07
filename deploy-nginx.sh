#!/bin/bash
# 官网上线更新脚本
mv /mnt/doctorBencao/css /mnt/doctorBencao/css.bak
mv /mnt/doctorBencao/js /mnt/doctorBencao/js.bak
mv /mnt/doctorBencao/img /mnt/doctorBencao/img.bak
mv /mnt/doctorBencao/html/{index.html,`date +%F-%H:%M:%S`.index.html}
mv /mnt/doctorBencao/html/{yishengban.html,`date +%F-%H:%M:%S`.yishengban.html}
mv /mnt/{yishengban.html,`date +%F-%H:%M:%S`.yishengban.html}
mv /mnt/{index.html,`date +%F-%H:%M:%S`.index.html}
tar zcf `date +%F-%H-%M-%S`.tar.gz /mnt/doctorBencao/{css.bak,js.bak,img.bak}
rm -rf /mnt/doctorBencao/{css.bak,js.bak,img.bak}
cp -rf  /root/guanwang/{css,js,img} /mnt/doctorBencao/
cp /root/guanwang/{index.html,yishengban.html} /mnt/doctorBencao/html
cp /root/guanwang/{index.html,yishengban.html} /mnt

