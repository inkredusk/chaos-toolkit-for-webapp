FROM python:3.7.12-slim-buster
COPY .  /
WORKDIR /
RUN pip install -r requirements.txt
EXPOSE  5002
CMD ["python", "app.py"]