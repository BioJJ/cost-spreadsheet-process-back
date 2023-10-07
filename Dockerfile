FROM python:3.8-slim AS build
WORKDIR /app
COPY . .
RUN pip install --upgrade pip
RUN pip install flask pandas numpy flask-cors openpyxl
EXPOSE 5000
CMD [ "python", "app.py" ]

