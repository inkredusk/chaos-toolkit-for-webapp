FROM python:3.7.12-slim-buster
COPY .  /chaos-toolkit-for-webapp
WORKDIR /chaos-toolkit-for-webapp
RUN pip install -r requirements.txt
EXPOSE  5002
CMD ["python", "app.py"]