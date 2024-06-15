#!/usr/bin/env python

import os
import sys
import json
import logging


from urllib.parse import parse_qs

logging = logging.getLogger(__name__)  # something else should have initialized it
# example logging.info('{}:{}'.format(key, os.environ[key]))

def dump_os_variables():
    for key in os.environ:
        logging.info('{}:{}'.format(key, os.environ[key]))


def has_valid_token():
    token = os.environ["HTTP_X_AUTHORIZATION"]

    return token == 'Bearer 20242024'
    return True


def is_application_json():
    content_type = os.environ.get('CONTENT_TYPE', '')
    logging.info('CONTENT_TYPE ' + content_type)
    return "application/json" == content_type


def is_post():
    http_method = os.environ.get('REQUEST_METHOD', '')
    return http_method == 'POST'


def is_get():
    http_method = os.environ.get('REQUEST_METHOD', '')
    return http_method == 'GET'


def get_query_values():
    params = parse_qs(os.environ.get('QUERY_STRING', ''))
    logging.debug(str(params))
    return params


def convert_json_to_python():
    if is_post():
        content_len = os.environ.get('CONTENT_LENGTH', '0')
        body = sys.stdin.read(int(content_len))
        python_values = json.loads(body, strict=False)
        logging.debug('returning: ' + str(python_values))
        return python_values
