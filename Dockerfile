FROM python 
RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi 
RUN pip install --upgrade pip
RUN pip install Flask
RUN pip install uWSGI
RUN pip install requests
RUN pip install redis==6.1.0
WORKDIR /app 
COPY app /app
COPY cmd.sh / 

EXPOSE 9090 9091
USER uwsgi

CMD ["/cmd.sh"]
