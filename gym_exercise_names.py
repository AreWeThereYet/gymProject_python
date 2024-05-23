#!/usr/bin/env python
import json
import logging
import traceback
import postgres_routines
import cgi_entry_handler as cgi


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

        logging.info('retrieving db data')

        print('Content-Type: application/json\n\n')
        rows = postgres_routines.get_exercise_names()
        logging.debug(rows)
        # add locker and bearer manually
        rows.append([1, 'Locker'])
        rows.append([0, 'Bearer'])

        json_result = json.dumps(rows)
        logging.debug("Returning back json string: " + json_result)
        print(json_result)
        return
    except Exception as e:
        logging.error(traceback.format_exc())
        print("Status: 400", "\n\n")


if __name__ == '__main__':
    main()
