#!/usr/bin/env python

import logging
import traceback
import json

import cgi_entry_handler as cgi_helper
from postgres_routines import insert_exercise_details, get_previous_exercises


##########################################################################
# Entry Point so try/catch around everything and logging starts here too #
##########################################################################

def main():
    logging.basicConfig(filename='logfile.txt', level=logging.DEBUG,
                        format='%(asctime)s - %(levelname)s - %(filename)s - %(funcName)s - %(message)s')

    try:
        if not cgi_helper.has_valid_token():
            print("Status: 403", "\n\n")
            return

        if not cgi_helper.is_post():
            logging.error("Not invoked as POST")
            print("Status: 400", "\n\n")
            return

        if not cgi_helper.is_application_json():
            logging.error("Not invoked with CONTENT_TYPE application/json")
            print("Status: 400", "\n\n")
            return

        values = cgi_helper.convert_json_to_python()
        logging.debug(type(values))
        insert_exercise_details(values)
        rows = get_previous_exercises(values['exerciseId'])
        json_result = json.dumps(rows)
        logging.debug("json return is %s", json_result)
        print('Content-Type: application/json\n\n')
        print(json_result)
        logging.info("success inserting exercise")

    except Exception as e:
        logging.error("Insert Failed")
        logging.error(traceback.format_exc())
        print("Status: 400", "\n\n")
        return


if __name__ == '__main__':
    main()
