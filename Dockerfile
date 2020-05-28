FROM python:3.7-slim

WORKDIR /alertmanager-webhook-telegram
ADD requirements.txt .
RUN pip install -r requirements.txt
ADD flaskAlert.py .

EXPOSE 9119

CMD ["./flaskAlert.py"]
