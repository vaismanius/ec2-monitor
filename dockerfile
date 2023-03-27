FROM python:3.10-slim
WORKDIR /app
COPY app.py requirements.txt /app/
RUN pip install -r requirements.txt && \
    apt update -y && \
    apt-get install -y awscli
CMD python app.py
#git web hook testy test