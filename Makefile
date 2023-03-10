setup:
	python3 -m venv ~/.venv
	. ~/.venv/bin/activate

install:
	pip install -r requirements.txt
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.17.5/hadolint-Linux-x86_64
	chmod +x /bin/hadolint

lint:
	hadolint ./ver1/Dockerfile
	hadolint ./ver2/Dockerfile
	pylint --disable=R,C,W1203,W1202 ./ver1/main.py
	pylint --disable=R,C,W1203,W1202 ./ver2/main.py

test:
	python3 test.py