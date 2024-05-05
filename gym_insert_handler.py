#!/usr/bin/env python

import sys
import os
import json
import logging
import logging_helper
import date_time_helper as dth
import urllib.parse
from datetime import date
from db_routines_exercise_performed import insertExerciseDetails
import traceback


def main(): 

    logger = logging_helper.get_common_logger()

    file_name = __file__.rsplit('/', 1)
    file_path = __file__ 
    file_list = file_path.rsplit(os.sep)
    file_name = file_list[-1]

    content_type = os.environ.get('CONTENT_TYPE', '') 
    logger.info(dth.now_with_delimiter(' ') + file_name + ' CONTENT_TYPE ' + content_type)

    success = False

    if "application/json" in content_type:
        logger.info(dth.now_with_delimiter(' ') + file_name + ' attempting to decode application/json')
        json_string = sys.stdin.read()
        logger.info(dth.now_with_delimiter(' ') + file_name + ' read query_string: ' + json_string)
        
        try:
            values = json.loads(json_string, strict=False)
            insertExerciseDetails(logger, values)
            success = True
        except Exception as e:
            logger.error(traceback.format_exc())
            

    print('Content-Type: application/json\n\n')
    response = { 'success' : success  , 'reason' : "" }
    data = {}
    toJson = json.dumps(response) # write out to json from your python object
    print(toJson)
       

if __name__ == '__main__':
    main()
