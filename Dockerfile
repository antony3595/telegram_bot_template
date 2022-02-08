FROM python:3.8.12-alpine3.15 as backend
ENV PYTHONUNBUFFERED 1
WORKDIR /bot

RUN apk --no-cache add  bash
COPY requirements.txt .

RUN python3.8 -m  pip install -r requirements.txt

COPY docker/supervisord.conf /etc/supervisord.conf
COPY . /bot/


ENTRYPOINT [ "/bot/entrypoint.sh" ]
CMD ["supervisord", "-c", "/etc/supervisord.conf"]
