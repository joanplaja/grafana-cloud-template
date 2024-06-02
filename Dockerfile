FROM python:3.11-slim

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Bundle application source
RUN mkdir /app/
COPY app.py /app

# set workdir
WORKDIR /app

# Start application
ENTRYPOINT ["python"]
CMD ["app.py"]
