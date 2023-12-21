# Introduce
从挖财安卓APP导出账本到xls

# APP DB
挖财安卓APP数据库位于`/data/data/com.wacai365/databases/wacai365.so`，获取需要root权限

# xls
使用挖财官方的xls模板，见`wacai.xls`，生成的xls可以在挖财官网网页上导入

0. 生成镜像
docker build -t wacai .

1. 执行命令
docker run -it --rm --name wacai -v "$PWD":/usr/src/app wacai bash

2.进行到容器后执行命令
python wacai.py wacai.so