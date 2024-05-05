from entry_handler import Entry_Handler
import logging_helper
import logging
from database_handler import Database_Handler
import json

logger = logging_helper.get_common_logger()
logger.setLevel(logging.DEBUG)

database_runner = Database_Handler(logger)

returned_tuple = database_runner.get_all_exercises()
if True == returned_tuple[0]:
    json_string = returned_tuple[1]
    print("get_all_exercises() Success and exercises are: ",json_string)
else:
    print("get_all_exercises() failed.  exiting")
    exit(1)

returned_tuple = database_runner.insert_session()
if True == returned_tuple[0]:
    dict_value = json.loads(returned_tuple[1])
    session_id = dict_value['id']
    print("insert_session() Success and session id: {}".format(session_id))
else:
    print("insert_session() failed.  exiting")
    exit(1)
    
returned_tuple = database_runner.delete_session(session_id)
if True == returned_tuple[0]:
    dict_value = json.loads(returned_tuple[1])
    rows = dict_value['rows']
    print("delete_session({}) Success and rows deleted: {}".format(session_id,rows))
else:
    print("delete_session() failed.  exiting")
    exit(1)
    
returned_tuple = database_runner.insert_exercise_definition("tester exercise",1)
if True == returned_tuple[0]:
    dict_value = json.loads(returned_tuple[1])
    exercise_id = dict_value['id']
    print("insert_exercise_definition('tester exercise',1) Success and id inserted: {}".format(exercise_id))
else:
    print("insert_exercise_definition() failed.  exiting")
    exit(1)

returned_tuple = database_runner.delete_exercise_definition(exercise_id)
if True == returned_tuple[0]:
    dict_value = json.loads(returned_tuple[1])
    rows = dict_value['rows']
    print("database_runner.delete_exercise_definition({}) Success and rows deleted: {}".format(exercise_id,rows))
else:
    print("delete_session() failed.  exiting")
    exit(1)
