setup:
	python3 -m venv ~/.venv
	. ~/.venv/bin/activate

install:
	pip install -r requirements.txt
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.17.5/hadolint-Linux-x86_64
	chmod +x /bin/hadolint

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203,W1202 main.py

all: setup install lint