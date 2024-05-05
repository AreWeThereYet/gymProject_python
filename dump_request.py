#!/usr/bin/env python

import sys
import os
import json
import logging
import logging_helper
import date_time_helper as dth
import urllib.parse

def main(): 

    logger = logging_helper.get_common_logger()

    file_name = __file__.rsplit('/', 1)
    file_path = __file__ 
    file_list = file_path.rsplit(os.sep)
    file_name = file_list[-1]

    logger.info(dth.now_with_delimiter(' ') + file_name + ' dump_incoming: ' )

    for key in os.environ:
        logger.info('{}:{}'.format(key,os.environ[key]))

    query_string = os.environ.get('QUERY_STRING', '')
    query = urllib.parse.parse_qs(query_string)
    if query['level'][0] == 'INFO':
        logger.info(dth.now_with_delimiter(' ') + file_name + ' Simple logging requested.  Skipping Body')
    else:
        content_type = os.environ.get('CONTENT_TYPE', '') 
        ddcontent_len = os.environ.get('CONTENT_LENGTH', '0')
        if "x-www-form-urlencoded" in  content_type:
            logger.info(dth.now_with_delimiter(' ') + file_name + ' attempting to decode x-www-form-urlencoded')
            query_string = sys.stdin.read()
            logger.info(dth.now_with_delimiter(' ') + file_name + ' read query_string: ' + '[' + query_string + ']')
            parsed_query = urllib.parse.parse_qsl(query_string)
            logger.info(dth.now_with_delimiter(' ') + file_name + ' successfully parsed x-www-form-urlencoded')
            for key, value in parsed_query:
                logger.info('{}:{}'.format(key, value))
            
    print("Status: 200\n")
       

if __name__ == '__main__':
    main()
