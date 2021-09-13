FROM pypy

WORKDIR /explain

COPY requirements.txt .

RUN pip install -r requirements.txt

CMD ["jupyter", "lab", "--port=8880", "--no-browser", "--ip=0.0.0.0", "--allow-root"]