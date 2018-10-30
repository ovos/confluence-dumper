FROM python:2-slim

ENV WORKON_HOME $HOME/.virtualenvs
ENV PROJECT_HOME $HOME/python_dev

RUN echo "source /usr/share/virtualenvwrapper/virtualenvwrapper.sh" >> /etc/environment \
	&& pip install virtualenvwrapper \
	&& virtualenv confluence_dumper_venv

COPY . /app

WORKDIR /app

ENTRYPOINT ["bash"]
