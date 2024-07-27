import traceback
import json
from postgres_routines import *
from logging_helper import get_common_logger


def insert_exercise_performed_test():
    logging.info("Begin")
    exercise_performed = """
    {"session": 1111111, "exerciseId": "46", "weightsReps": "10", "utcInSeconds": 1721091259, "weightsWeight": "80", "weightsDetails": ""}
    """
    values = json.loads(exercise_performed, strict=False)
    logging.info("converted from json, python object is " + str(values))
    insert_exercise_details(values)
    logging.info("End")


def delete_exercise_performed_test(after_id):
    logging.info("Begin")
    delete_after_id_exercise_performed_entries(after_id)
    logging.info("End")


def get_highest_exercise_performed_id_test():
    logging.info("Begin")
    id = get_highest_exercise_performed_entry()[0]
    logging.info("End Highest id is " + str(id))
    return id


def get_last_exercises_performed_test():
    logging.info("Begin")
    rows = get_last_exercises_performed()
    logging.warning('row count:  %s', len(rows))
    logging.info("End")

def main():
    get_common_logger()

    try:
        logging.info("let's begin")

        highest_id = get_highest_exercise_performed_id_test()
        insert_exercise_performed_test()
        delete_exercise_performed_test(highest_id)

        get_last_exercises_performed_test()


        logging.info("Finished success")
    except Exception as e:
        logging.error("Tests Failed")
        logging.error(traceback.format_exc())


if __name__ == '__main__':
    main()
