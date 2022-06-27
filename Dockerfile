FROM python
RUN mkdir /app
WORKDIR /app
ADD . /app/
RUN apt-get update -y
RUN apt-get -y install git nodejs
RUN pip install --upgrade pip
RUN pip install --upgrade certifi
RUN pip install jupyterlab jupyterlab-git
EXPOSE 8000
ENV JUPYTER_LAB_TOKEN="1234"
CMD ["sh","run.sh"]