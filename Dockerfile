FROM python
RUN mkdir /app
WORKDIR /app
ADD dirs/. /app/
RUN apt-get update -y
RUN apt-get -y install git nodejs
RUN pip install --upgrade pip
RUN pip install --upgrade certifi
RUN pip install jupyterlab jupyterlab-git lckr-jupyterlab-variableinspector ipympl jupyterlab-link-share
RUN useradd labs -b /app/projects
EXPOSE 8000
#VOLUME projects/
#ENV JUPYTER_LAB_TOKEN="1234"
CMD ["sh","run.sh"]
