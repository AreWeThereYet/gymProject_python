#!/usr/bin/env python

import sys
import os
import json
import logging
import logging_helper
import date_time_helper as dth
from urllib.parse import parse_qs
from datetime import date
from db_routines_exercise_performed import get_previous_exercises
import traceback


def main(): 

    logger = logging_helper.get_common_logger()

    file_name = __file__.rsplit('/', 1)
    file_path = __file__ 
    file_list = file_path.rsplit(os.sep)
    file_name = file_list[-1]

    success = False

    query_string = os.environ.get('QUERY_STRING', '') 
    converted_query_values = parse_qs(query_string) 
    logger.info(dth.now_with_delimiter(' ') + file_name + ' query params: ' + str(converted_query_values))
    
    rows = {}
    try:
        exercise_id = converted_query_values['exercise_id'][0]
        rows = get_previous_exercises(logger, exercise_id)
        logger.info(dth.now_with_delimiter(' ') + file_name + 'sql data from get_previous_exercises is:' + str(rows))
        success = True
    except Exception as e:
        logger.error(dth.now_with_delimiter(' ') + file_name + traceback.format_exc())
        
    print('Content-Type: application/json\n\n')
    response = { 'success' : success  , 'reason' : "" , 'data': rows}
    toJson = json.dumps(response)
    logger.info(dth.now_with_delimiter(' ') + file_name + 'sending back json string:' + toJson)
    print(toJson)
       

if __name__ == '__main__':
    main()
