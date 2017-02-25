
# config python virtualenv
virtualenv --no-site-packages -p /usr/bin/python2.7 ~/.venv/python2.7
echo -e "\n#Add by ccen py_virtualenv.sh \n\
if [ -f ~/.venv/python2.7/bin/activate ]; then \n\
  source ~/.venv/python2.7/bin/activate \n\
fi" >> ~/.bashrc
source ~/.bashrc
