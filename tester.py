import psycopg2
import psycopg2.extras
from psycopg2 import sql
import json

# Connect to your PostgreSQL database
conn = psycopg2.connect(
        dbname="dbqiycouugxg3r",
        user="updqeo4pn0axa",
        password="j411@b@&cocg",
        host="localhost"
)

# Create a cursor object
cur = conn.cursor()

# Define your string and number values
session_id=123
exercise_details = {"session": 20240420, "utc-in-seconds": 1713666933, "exercise-name": "39" , "weights-weight": "20", "weights-reps": "10", "weights-details": ""}
utc = 1713666934

# Define your SQL query with placeholders (%s)
sql = "INSERT INTO exercise_performed (session_id, exercise_details, utc_seconds) VALUES (%s, %s, %s)"

# Execute the query with the values as a tuple
cur.execute(sql, (session_id, psycopg2.extras.Json(exercise_details), utc))

# Commit the transaction
conn.commit()

cur.close()

cur = conn.cursor()

get_session_query = "select exercise_details from exercise_performed where session_id = %s "
cur.execute(get_session_query, (session_id,))
rows = cur.fetchall()
result = []
for row in rows:
    result.append({'string_column': row[0]})

# Convert the list of dictionaries to a JSON object
json_result = json.dumps(result)
print(json_result)

# Close cursor and connection
cur.close()
conn.close()

