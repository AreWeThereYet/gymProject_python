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
    print("Status: 200\n")
    print('Content-Type: application/text\n\n')
    for key in os.environ:
        print('{}:{}'.format(key,os.environ[key]))
        logger.info('{}:{}'.format(key,os.environ[key]))


if __name__ == '__main__':
    main()
