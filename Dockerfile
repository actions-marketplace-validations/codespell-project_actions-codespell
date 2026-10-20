FROM python:3.15-alpine@sha256:2699b90f4d562a22e2dd076c82f964032f64814204bff36d271a54ba4cc2c7e2

COPY LICENSE \
        README.md \
        entrypoint.sh \
        codespell-problem-matcher/codespell-matcher.json \
        requirements.txt \
        /code/

RUN pip install --no-cache-dir --require-hashes -r /code/requirements.txt

ENTRYPOINT ["/code/entrypoint.sh"]
CMD []
