FROM python:3.6-slim
RUN useradd -u 1500 flask && mkdir /app
WORKDIR /app
COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY *.py ./
RUN chown -R flask /app && chmod u+x ./app.py
USER 1500
CMD python -m flask run --host=0.0.0.0