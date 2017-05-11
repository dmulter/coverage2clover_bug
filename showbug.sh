#!/bin/bash
py.test --cov one --cov two --cov-report xml tests/test.py
coverage2clover -i coverage.xml
