'安装虚拟环境'
pip install virtualenv


pip install virtualenvwrapper-win
'创建虚拟环境'

virtualenv 虚拟环境名


mkvirtualenv 虚拟环境名
'进入虚拟环境'
cd testvir
cd Scrpit

'运行文件'
.activate.bat
'查看已安装包'
pip list

'退出虚拟环境'
deactivate.bat

'简便进入虚拟环境'
workon '名'
'删除虚拟环境'
rmvirtualenv '名'


django==1.9
