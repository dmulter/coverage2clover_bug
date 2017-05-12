#!/bin/bash

py.test --cov one --cov two --cov-report xml:coverage1.xml tests/test.py
py.test --cov one --cov two --cov-report xml:coverage2.xml --cov-config .coveragerc_noinitfiles tests/test.py

echo "==== Running coverage2clover with two __init__.py files..."
coverage2clover -i coverage1.xml

echo "==== Running coverage2clover for foo.py and bar.py..."
coverage2clover -i coverage2.xml
