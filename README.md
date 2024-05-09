# gym_python

# Basic Config
## Exercise Group
Example:

WEIGHT_EXERCISES = {
    "div_info": {'div_name': 'weightsDiv', "fields": ['weightsWeight', 'weightsReps', 'weightsDetails']},
    "exercise_ids": ["37", "39", "40", "41", "42", "46", "48", "49"],
    'data_table_headers': ['Datetime', 'Amount', 'Reps'],
    'data_table_fields': ['utcInSeconds', 'weightsWeight', 'weightsReps'],
    'id': 1
}

Field info:
* div_name - self explanatory
* fields - the fields that should be submitted 
* exercise_ids - which dropdown ids use this div
* data_table_headers - headings for previous exercises performed
* data_table_fields - what fields should be extracted from the json that was returned from SQL
* id - no idea what I had in mind for it

