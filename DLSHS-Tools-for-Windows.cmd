@echo off
@chcp 65001
cls
echo 作者：Marshmallowlands（Mohandar），博客地址https://marshmallowlands.github.io
echo 欢迎使用合并思源黑体脚本该脚本是全自动脚本工具，不需要人为干预，如果有问题欢迎提出，按任意键开始
pause>nul
cls
echo 准备工作
md src
cd src
..\bin\rm.exe -r *

echo 下载文件
..\bin\wget.exe https://mirrors.bfsu.edu.cn/adobe-fonts/source-han-sans/SubsetOTF/SourceHanSansCN.zip -O SourceHanSansCN.zip
..\bin\wget.exe https://mirrors.bfsu.edu.cn/adobe-fonts/source-han-sans/SubsetOTF/SourceHanSansTW.zip -O SourceHanSansTW.zip
..\bin\wget.exe https://mirrors.bfsu.edu.cn/adobe-fonts/source-han-sans/SubsetOTF/SourceHanSansHK.zip -O SourceHanSansHK.zip
..\bin\wget.exe https://mirrors.bfsu.edu.cn/adobe-fonts/source-han-sans/SubsetOTF/SourceHanSansJP.zip -O SourceHanSansJP.zip
..\bin\wget.exe https://mirrors.bfsu.edu.cn/adobe-fonts/source-han-sans/SubsetOTF/SourceHanSansKR.zip -O SourceHanSansKR.zip

echo 解压文件
..\bin\unzip.exe SourceHanSansCN.zip
..\bin\unzip.exe SourceHanSansTW.zip
..\bin\unzip.exe SourceHanSansHK.zip
..\bin\unzip.exe SourceHanSansJP.zip
..\bin\unzip.exe SourceHanSansKR.zip

echo 开始合并
echo Noto Sans CJK Thin Fonts
..\bin\python\python.exe ..\bin\afdko\otf2otc.py .\SourceHanSansJP\SourceHanSansJP-ExtraLight.otf .\SourceHanSansKR\SourceHanSansKR-ExtraLight.otf .\SourceHanSansCN\SourceHanSansCN-ExtraLight.otf .\SourceHanSansTW\SourceHanSansTW-ExtraLight.otf .\SourceHanSansHK\SourceHanSansHK-ExtraLight.otf -o ..\output\NotoSansCJK-Thin.ttc
echo Noto Sans CJK Light Fonts
..\bin\python\python.exe ..\bin\afdko\otf2otc.py .\SourceHanSansJP\SourceHanSansJP-Light.otf .\SourceHanSansKR\SourceHanSansKR-Light.otf .\SourceHanSansCN\SourceHanSansCN-Light.otf .\SourceHanSansTW\SourceHanSansTW-Light.otf .\SourceHanSansHK\SourceHanSansHK-Light.otf -o ..\output\NotoSansCJK-Light.ttc
echo Noto Sans CJK Regular Fonts
..\bin\python\python.exe ..\bin\afdko\otf2otc.py .\SourceHanSansJP\SourceHanSansJP-Regular.otf .\SourceHanSansKR\SourceHanSansKR-Regular.otf .\SourceHanSansCN\SourceHanSansCN-Regular.otf .\SourceHanSansTW\SourceHanSansTW-Regular.otf .\SourceHanSansHK\SourceHanSansHK-Regular.otf -o ..\output\NotoSansCJK-Regular.ttc
echo Noto Sans CJK Medium Fonts
..\bin\python\python.exe ..\bin\afdko\otf2otc.py .\SourceHanSansJP\SourceHanSansJP-Medium.otf .\SourceHanSansKR\SourceHanSansKR-Medium.otf .\SourceHanSansCN\SourceHanSansCN-Medium.otf .\SourceHanSansTW\SourceHanSansTW-Medium.otf .\SourceHanSansHK\SourceHanSansHK-Medium.otf -o ..\output\NotoSansCJK-Medium.ttc
echo Noto Sans CJK Bold Fonts
..\bin\python\python.exe ..\bin\afdko\otf2otc.py .\SourceHanSansJP\SourceHanSansJP-Bold.otf .\SourceHanSansKR\SourceHanSansKR-Bold.otf .\SourceHanSansCN\SourceHanSansCN-Bold.otf .\SourceHanSansTW\SourceHanSansTW-Bold.otf .\SourceHanSansHK\SourceHanSansHK-Bold.otf -o ..\output\NotoSansCJK-Bold.ttc
echo Noto Sans CJK Black Fonts
..\bin\python\python.exe ..\bin\afdko\otf2otc.py .\SourceHanSansJP\SourceHanSansJP-Heavy.otf .\SourceHanSansKR\SourceHanSansKR-Heavy.otf .\SourceHanSansCN\SourceHanSansCN-Heavy.otf .\SourceHanSansTW\SourceHanSansTW-Heavy.otf .\SourceHanSansHK\SourceHanSansHK-Heavy.otf -o ..\output\NotoSansCJK-Black.ttc

echo 清理临时文件
..\bin\rm.exe -r *

echo 完事了，祝你开心每一天2333
pause