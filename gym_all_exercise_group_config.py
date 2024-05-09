#!/usr/bin/env python
import json
import logging
import traceback
import cgi_entry_handler as cgi
from constants import ALL_EXERCISES


##########################################################################
# Entry Point so try/catch around everything and logging starts here too #
##########################################################################


def main():
    logging.basicConfig(filename='logfile.txt', level=logging.DEBUG,
                        format='%(asctime)s - %(levelname)s - %(filename)s - %(funcName)s - %(message)s')
    try:
        if not cgi.is_get():
            logging.error("Not invoked as GET")
            print("Status: 400", "\n\n")
            return

        print('Content-Type: application/json\n\n')

        json_result = json.dumps(ALL_EXERCISES)
        logging.debug("Returning back json string: " + json_result)
        print(json_result)
        return
    except Exception as e:
        logging.error(traceback.format_exc())
        print("Status: 400", "\n\n")


if __name__ == '__main__':
    main()
