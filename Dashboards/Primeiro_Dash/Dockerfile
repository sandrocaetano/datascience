# Dockerfile
FROM python:3.10.4-slim-buster
RUN pip install --upgrade pip

RUN useradd -m myuser
USER myuser
WORKDIR /home/myuser

COPY --chown=myuser:myuser requirements.txt requirements.txt
COPY --chown=myuser:myuser . .
RUN pip install --user -r requirements.txt

ENV PATH="/home/myuser/.local/bin:${PATH}"

EXPOSE 8060

CMD ["python3", "index.py"]