#!/usr/bin/env python
import json
import logging
import traceback
import postgres_routines
import cgi_entry_handler as cgi
from logging_helper import get_common_logger



##########################################################################
# Entry Point so try/catch around everything and logging starts here too #
##########################################################################

def main():
    get_common_logger()
    try:
        if not cgi.is_get():
            logging.error("Not invoked as GET")
            print("Status: 400", "\n\n")
            return

        logging.info('Begin')

        print('Content-Type: application/json\n\n')
        rows = postgres_routines.get_last_exercises_performed()
        logging.debug(rows)

        json_result = json.dumps(rows)
        logging.debug("Returning back json string: " + json_result)
        print(json_result)
        logging.info('End')
        return
    except Exception as e:
        logging.error(traceback.format_exc())
        print("Status: 400", "\n\n")


if __name__ == '__main__':
    main()
