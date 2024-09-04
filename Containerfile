FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN test create-db
RUN test populate-db
RUN test add-user -u admin -p admin
EXPOSE 5000
CMD ["test", "run"]
