import json
import logging
import traceback

from postgres_routines import insert_exercise_type


# from constants import ALL_EXERCISES
# from postgres_routines import insert_exercise_type


##########################################################################
# Entry Point so try/catch around everything and logging starts here too #
##########################################################################

def main():
    logging.basicConfig(filename='logfile.txt', level=logging.DEBUG,
                        format='%(asctime)s - %(levelname)s - %(filename)s - %(funcName)s - %(message)s')
    try:
        logging.info("let's begin")

        # "{""session"": 20240425, ""exerciseId"": ""42"", ""weightsReps"": ""10"", ""utcInSeconds"": 1714101956,
        # ""weightsWeight"": ""25"", ""weightsDetails"": """"}"

        oneType = {}
        oneType['id'] = 1
        oneType['name'] = 'Weight Based Exercises'
        session_summary = {}
        # ['utcInSeconds', 'weightsWeight', 'weightsReps']
        session_summary['extract_fields'] = ['utcInSeconds', 'weightsWeight', 'weightsReps']
        session_summary['prefix_to_fields'] = ['datetime', 'lbs: ', 'reps: ']

        mobile_summary = {}
        mobile_summary['extract_fields'] = ['utcInSeconds', 'xxxx', 'xxxx']
        mobile_summary['prefix_to_fields'] = ['datetime', 'xxxx: ', 'xxxx: ']

        oneType['report_fields'] = {}
        oneType['report_fields']['mobile_summary'] = mobile_summary
        oneType['report_fields']['session_summary'] = session_summary

        print(json.dumps(oneType))
        # {"id": 1, "name": "Weight Based Exercises", "report_fields":{
        # "mobile_summary": {"extract_fields": ["utcInSeconds", "somethingelse", "another one"],
        # "prefix_to_fields": ["datetime", "lbs: ", "reps: "]},
        # "session_summary": {"extract_fields": ["utcInSeconds", "weightsWeight", "weightsReps"],
        # "prefix_to_fields": ["datetime", "lbs: ", "reps: "]}}}

        insert_exercise_type(oneType)
        logging.info("success")

        return
    except Exception as e:
        logging.error(traceback.format_exc())


if __name__ == '__main__':
    main()
