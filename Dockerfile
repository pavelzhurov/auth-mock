FROM python:3.6-slim
RUN mkdir /app
WORKDIR /app
COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY *.py ./
RUN chmod +x ./app.py
CMD python -m flask run --host=0.0.0.0