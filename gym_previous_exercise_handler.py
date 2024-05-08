#!/usr/bin/env python

import json
import traceback
import cgi_entry_handler as cgi
import logging

from constants import ALL_EXERCISES
from postgres_routines import get_previous_exercises


##########################################################################
# Entry Point so try/catch around everything and logging starts here too #
##########################################################################

def main():
    logging.basicConfig(filename='logfile.txt', level=logging.DEBUG,
                        format='%(asctime)s - %(levelname)s - %(filename)s - %(funcName)s - %(message)s')

    try:
        query_params = cgi.get_query_values()
        exercise_id = query_params["id"][0]
        logging.info("Exercise id: %s", exercise_id)
        rows = get_previous_exercises(exercise_id)
        for exercise_group in ALL_EXERCISES:
            logging.info(str(exercise_group))
            if exercise_id in exercise_group['exercise_ids']:
                break
        logging.debug('found exercise group: ' + str(exercise_group))
        result = add_formatted_data(rows, exercise_group)
        json_result = json.dumps(result)
        logging.debug("json return is %s",json_result)
        print('Content-Type: application/json\n\n')
        print(json_result)
        return
    except Exception as e:
        logging.error(traceback.format_exc())
        print("Status: 400", "\n\n")
        return


def add_formatted_data(rows, exercise_group):
    converted_rows = []
    result = {'headers': exercise_group['data_table_headers'], 'data': converted_rows}
    for row in rows:
        if exercise_group["id"] == 4:
            create_stair_master_field(row)
        if exercise_group["id"] == 3:
            create_cardio_field(row)
        logging.info(str(row))
        one_converted_row = []
        converted_rows.append(one_converted_row)
        for field in exercise_group['data_table_fields']:
            one_converted_row.append(row[field])

    logging.debug('return converted rows (py objects) ' + str(result))
    return result


def create_stair_master_field(row):
    row['duration'] = row['stairMasterMinutes'] + ':' + row['stairMasterSeconds']


def create_cardio_field(row):
    row['miles'] = row['cardioMilesMajor'] + '.' + row['cardioMilesMinor']
    row["duration"] = row['cardioMinutes'] + ':' + row['cardioSeconds']


if __name__ == '__main__':
    main()
