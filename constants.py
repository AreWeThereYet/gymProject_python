WEIGHT_EXERCISES = {
    "div_info": {'div_name': 'weightsDiv', "fields": ['weightsWeight', 'weightsReps', 'weightsDetails']},
    "exercise_ids": ["37", "39", "40", "41", "42", "46", "48", "49", "50", "51", "52"],
    'data_table_headers': ['Datetime', 'Amount', 'Reps'],
    'data_table_fields': ['utcInSeconds', 'weightsWeight', 'weightsReps'],
    'id': 1
}
OWN_BODY_RESISTENCE_EXERCISES = {
    "exercise_ids": ["44", "45"],
    "div_info": {"div_name": 'ownBodyResistanceDiv',
                 "fields": ['resistanceReps', 'resistanceWeight', 'resistanceDetails']},
    'data_table_headers': ['Datetime', "Assist Weight", "Reps"],
    'data_table_fields': ['utcInSeconds', 'resistanceWeight', 'resistanceReps'],
    'id': 2
}
CARDIO_EXERCISES = {
    "div_info": {"div_name": 'cardioDiv',
                 "fields": ["cardioMilesMajor", "cardioMilesMinor", "cardioMinutes", "cardioSeconds", "cardioDetails"]},
    "exercise_ids": ["36", "47"],
    'data_table_headers': ['Datetime', "Miles", "Time"], 'data_table_fields': ['utcInSeconds', "miles", "duration"],
    'id': 3
}
STAIR_MASTER_EXERCISES = {
    "exercise_ids": ["43"],
    "div_info": {"div_name": 'stairMasterDiv',
                 "fields": ["stairMasterLevel", "stairMasterMinutes", "stairMasterSeconds", "stairMasterFloors",
                            "stairMasterDetails"]},
    'data_table_headers': ['Datetime', "Level", "Duration", "Floors"],
    'data_table_fields': ['utcInSeconds', 'stairMasterLevel', 'duration', 'stairMasterFloors'],
    'id': 4
}
SIMPLE_REP_EXERCISES = {
    "div_info": {"div_name": 'simpleRepsDiv', "fields": ['simpleRepsReps', 'simpleRepsDetails']},
    "exercise_ids": ["38"],
    'data_table_headers': ['Datetime', "Reps"], 'data_table_fields': ['utcInSeconds', "simpleRepsReps"],
    'id': 5
}
GENERAL_ONE_LINERS = {
    "div_info": {"div_name": 'oneLineGeneralDiv', "fields": ['oneLine']},
    "exercise_ids": ["0", "1"],
    'data_table_headers': ['Datetime', "Value"], 'data_table_fields': ['utcInSeconds', "oneLine"],
    'id': 6
}
ALL_EXERCISES = [GENERAL_ONE_LINERS, WEIGHT_EXERCISES, OWN_BODY_RESISTENCE_EXERCISES, CARDIO_EXERCISES,
                 STAIR_MASTER_EXERCISES, SIMPLE_REP_EXERCISES]
