import json
import logging
import logging_helper
import date_time_helper as dth
from database_handler import Database_Handler
from urllib.parse import parse_qs

available_methods = {'insert_session': 'GET', 'retrieve_exercises':'GET', 'insert_exercise':'POST', 'delete_session': 'GET'}

class Entry_Handler:

    def __init__(self, logger):
        self.logger = logger
        logger.info(dth.now_with_delimiter(' ') + ' In entry_handler init ')
        self.database_runner = Database_Handler(logger)
    
    def run_method(self, http_method, query_params, body_params): # both query and body are python dicts

        target_method = query_params['method'][0]
        if "debug" in query_params:
            self.logger.setLevel(logging.DEBUG)

        if target_method not in available_methods:
            print("Status: 400\n")
            logger.error(dth.now_with_delimiter(' ') + 'method=xxx either missing or invalid value [' + target_method if target_method is not None else 'NONE]')
            return
    
        if 'retrieve_exercises' == target_method and 'GET' == http_method:
            result = self.database_runner.get_all_exercises()
            if result[0] == True: 
                print('Content-Type: application/json\n') 
                print(result[1])
                return
            else:
                print("Status: 500", "\n\n")
                logger.error(dth.now_with_delimiter(' ') + 'Database failed to get records')
                return

        if 'delete_session' == target_method and 'POST' == http_method:
            session_id = query_params['session_id'][0]
            result = self.database_runner.delete_session(session_id)
            if result[0] == True: 
                print('Content-Type: application/json\n') 
                print(result[1])
                return
            else:
                print("Status: 500", "\n\n")
                logger.error(dth.now_with_delimiter(' ') + 'Database failed to delete record')
                return

        if 'insert_session' == target_method and "POST" == http_method:
            result = self.database_runner.insert_session()
            if result[0] == True: 
                print('Content-Type: application/json\n') 
                print(result[1])
                return
            else:
                print("Status: 500", "\n\n")
                logger.error(dth.now_with_delimiter(' ') + 'Database failed to insert record')
                return
        
