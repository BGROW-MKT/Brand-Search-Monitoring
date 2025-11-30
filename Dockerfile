FROM python:3.10-slim

# Install dependencies

RUN apt-get update && apt-get install -y \
curl \
unzip \
&& rm -rf /var/lib/apt/lists/*

# Set work directory

WORKDIR /app

# Copy files

COPY requirements.txt requirements.txt
COPY [worker.py](http://worker.py/) [worker.py](http://worker.py/)
COPY keywords.txt keywords.txt

# Install Python dependencies

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "[worker.py](http://worker.py/)"]
