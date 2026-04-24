FROM python:3.10
WORKDIR /app
RUN echo "from http.server import SimpleHTTPRequestHandler, HTTPServer; HTTPServer(('0.0.0.0', 8000), SimpleHTTPRequestHandler).serve_forever()" > app.py
CMD ["python", "app.py"]