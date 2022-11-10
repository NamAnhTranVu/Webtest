FROM python:3.10

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

RUN apt-get update && apt-get install net-tools
 
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
