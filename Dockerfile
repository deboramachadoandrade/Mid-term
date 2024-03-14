FROM python:3.9
RUN useradd -m -u 1000 user
USER user
ENV HOME=/home/user \
    PATH=/home/user/.local/bin:$PATH
WORKDIR $HOME/Mid-term_copy
COPY --chown=user . $HOME/Mid-term_copy
COPY ./requirements.txt ~/Mid_term_copy/requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD ["chainlit", "run", "app.py", "--port", "7860"]
