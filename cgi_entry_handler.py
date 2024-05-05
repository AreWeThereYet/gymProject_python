#!/usr/bin/env python

import os
import json
import logging
import logging_helper
import date_time_helper as dth

from entry_handler import Entry_Handler
from urllib.parse import parse_qs

def main(): 

    logger = logging_helper.get_common_logger()

    logger.info(dth.now_with_delimiter(' ') + 'In cgi_entry_handler main ')

    http_method = os.environ.get('REQUEST_METHOD', '')
    query_string = os.environ.get('QUERY_STRING', '') 
    converted_query_values = parse_qs(query_string) 

    if "debug" in parsed_values:
        logger.setLevel(logging.DEBUG)
        
    logger.debug(dth.now_with_delimiter(' ') + str(parsed_values))

    if http_method not in {'GET','DELETE','POST'}:
        print("Status: 400\n")
        logger.error(dth.now_with_delimiter(' ') + 'No valid HTTP method used GET/DELETE/POST')
        return

    if "POST" == http_method:
        content_len = os.environ.get('CONTENT_LENGTH', '0')
        body = sys.stdin.read(int(content_len))
        converted_json_body = json.loads(body) 
        logger.debug(dth.now_with_delimiter(' ') + 'json received and decoded: ' + json.dumps(converted_json_body))

    try:
        entry_handler = Entry_Handler(logger) 
        # .run_method("GET","retrieve_exercises",test1_query_params,"") 
        entry_handler.run_method(http_method, converted_query_values, converted_json_body)

    except Exception as ex:
        logger.error(dth.now_with_delimiter(' ') + 'Big Error')
        logger.error(dth.now_with_delimiter(' ') + str(ex))
        print("Status: 400\n")


if __name__ == '__main__':
    main()
