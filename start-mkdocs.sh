#!/bin/bash
# Initialize a screen instance with the name 'MKDocs' and serve the documentation website.
screen -d -m -S MKDocs -h 2048
screen -p 0 -S MKDocs -X eval 'stuff "mkdocs serve -a 0.0.0.0:8000^M"\015'
