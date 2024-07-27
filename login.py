#!/usr/bin/env python

import logging
import traceback

import cgi_entry_handler as cgi_helper


##########################################################################
# Entry Point so try/catch around everything and logging starts here too #
##########################################################################

def main():
    logging.basicConfig(filename='logfile.txt', level=logging.DEBUG,
                        format='%(asctime)s - %(levelname)s - %(filename)s - %(funcName)s - %(message)s')

    logging.info("validating login info...")

    try:
        if not cgi_helper.has_valid_token():
            logging.info("sending back 403")
            print("Status: 403", "\n\n")
            return

        logging.info("successful login")
        print('Content-Type: application/json\n\n')  # Until I figure out empty response, this will do
        return "{}"

    except Exception as e:
        logging.error("Insert Failed")
        logging.error(traceback.format_exc())
        print("Status: 400", "\n\n")
        return


if __name__ == '__main__':
    main()
