FROM python:3.6-alpine
# RUN echo First Build Docker images
WORKDIR /app
ADD . /app/www
COPY . /app
RUN pip3 -V
RUN python3 -V
RUN pip3 install flask
EXPOSE 5000
CMD ["python3", "server.py"]

