FROM python:3.8-alpine
WORKDIR /app
ADD bus_app .
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
