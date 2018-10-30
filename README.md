# Confluence Dumper

## Docker Usage

```bash

docker build -t ovos/confluence-dumper .
docker run -it --rm -v $PWD:/app
# then inside a running container
source /confluence_dumper_venv/bin/activate
pip install -r requirements.txt
python confluence_dumper.py
```
