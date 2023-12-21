FROM python:3

WORKDIR /usr/src/app

RUN pip config set global.index-url https://pypi.douban.com/simple/
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "tail", " -f" , " /dev/null"]
# CMD [ "python", "./wacai.py" , "./wacai.so"]