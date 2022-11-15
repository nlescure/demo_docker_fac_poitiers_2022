#!/bin/bash
sudo docker run --rm -v $(pwd):/usr/src/myapp -w /usr/src/myapp php:8.0-cli-alpine php index.php



