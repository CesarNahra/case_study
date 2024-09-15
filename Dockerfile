FROM python:alpine
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
WORKDIR /app/todo_project
ENTRYPOINT [ "python" ]
CMD [ "run.py" ]