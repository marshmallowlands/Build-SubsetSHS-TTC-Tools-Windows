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

echo 下载文件
..\bin\wget.exe https://mirrors.bfsu.edu.cn/adobe-fonts/source-han-sans/OTF/SourceHanSansSC.zip -O SourceHanSansSC.zip
..\bin\wget.exe https://mirrors.bfsu.edu.cn/adobe-fonts/source-han-sans/OTF/SourceHanSansTC.zip -O SourceHanSansTC.zip
..\bin\wget.exe https://mirrors.bfsu.edu.cn/adobe-fonts/source-han-sans/OTF/SourceHanSansHC.zip -O SourceHanSansHC.zip
..\bin\wget.exe https://mirrors.bfsu.edu.cn/adobe-fonts/source-han-sans/OTF/SourceHanSansJ.zip -O SourceHanSansJ.zip
..\bin\wget.exe https://mirrors.bfsu.edu.cn/adobe-fonts/source-han-sans/OTF/SourceHanSansK.zip -O SourceHanSansK.zip

echo 解压文件
..\bin\unzip.exe SourceHanSansSC.zip
..\bin\unzip.exe SourceHanSansTC.zip
..\bin\unzip.exe SourceHanSansHC.zip
..\bin\unzip.exe SourceHanSansJ.zip
..\bin\unzip.exe SourceHanSansK.zip

echo 开始合并
echo Noto Sans CJK Thin Fonts
..\bin\python\python.exe ..\bin\afdko\otf2otc.py .\SourceHanSansJ\SourceHanSans-ExtraLight.otf .\SourceHanSansK\SourceHanSansK-ExtraLight.otf .\SourceHanSansSC\SourceHanSansSC-ExtraLight.otf .\SourceHanSansTC\SourceHanSansTC-ExtraLight.otf .\SourceHanSansHC\SourceHanSansHC-ExtraLight.otf -o ..\output\NotoSansCJK-Thin.ttc
echo Noto Sans CJK Light Fonts
..\bin\python\python.exe ..\bin\afdko\otf2otc.py .\SourceHanSansJ\SourceHanSans-Light.otf .\SourceHanSansK\SourceHanSansK-Light.otf .\SourceHanSansSC\SourceHanSansSC-Light.otf .\SourceHanSansTC\SourceHanSansTC-Light.otf .\SourceHanSansHC\SourceHanSansHC-Light.otf -o ..\output\NotoSansCJK-Light.ttc
echo Noto Sans CJK Regular Fonts
..\bin\python\python.exe ..\bin\afdko\otf2otc.py .\SourceHanSansJ\SourceHanSans-Regular.otf .\SourceHanSansK\SourceHanSansK-Regular.otf .\SourceHanSansSC\SourceHanSansSC-Regular.otf .\SourceHanSansTC\SourceHanSansTC-Regular.otf .\SourceHanSansHC\SourceHanSansHC-Regular.otf -o ..\output\NotoSansCJK-Regular.ttc
echo Noto Sans CJK Medium Fonts
..\bin\python\python.exe ..\bin\afdko\otf2otc.py .\SourceHanSansJ\SourceHanSans-Medium.otf .\SourceHanSansK\SourceHanSansK-Medium.otf .\SourceHanSansSC\SourceHanSansSC-Medium.otf .\SourceHanSansTC\SourceHanSansTC-Medium.otf .\SourceHanSansHC\SourceHanSansHC-Medium.otf -o ..\output\NotoSansCJK-Medium.ttc
echo Noto Sans CJK Bold Fonts
..\bin\python\python.exe ..\bin\afdko\otf2otc.py .\SourceHanSansJ\SourceHanSans-Bold.otf .\SourceHanSansK\SourceHanSansK-Bold.otf .\SourceHanSansSC\SourceHanSansSC-Bold.otf .\SourceHanSansTC\SourceHanSansTC-Bold.otf .\SourceHanSansHC\SourceHanSansHC-Bold.otf -o ..\output\NotoSansCJK-Bold.ttc
echo Noto Sans CJK Black Fonts
..\bin\python\python.exe ..\bin\afdko\otf2otc.py .\SourceHanSansJ\SourceHanSans-Heavy.otf .\SourceHanSansK\SourceHanSansK-Heavy.otf .\SourceHanSansSC\SourceHanSansSC-Heavy.otf .\SourceHanSansTC\SourceHanSansTC-Heavy.otf .\SourceHanSansHC\SourceHanSansHC-Heavy.otf -o ..\output\NotoSansCJK-Black.ttc

echo 清理临时文件
..\bin\rm.exe -r *

echo 完事了，小花花送你~
pause