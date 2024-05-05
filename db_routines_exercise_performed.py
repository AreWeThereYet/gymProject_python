import psycopg2
import psycopg2.extras
from psycopg2 import sql
import json

def get_previous_exercises(logger, exercise_id):
    logger.info("get_previous_exercises: " + exercise_id)
    
    # Establish a connection to the PostgreSQL database
    conn = psycopg2.connect(
        dbname="dbqiycouugxg3r",
        user="updqeo4pn0axa",
        password="j411@b@&cocg",
        host="localhost"
    )

    # Create a cursor object to execute SQL queries
    cur = conn.cursor()

    sql = "SELECT exercise_details FROM public.exercise_performed WHERE exercise_id = %s ORDER BY id DESC LIMIT 3"
    cur.execute(sql, (exercise_id,))
    rows = cur.fetchall()
    result = []
    for row in rows:
        result.append(row[0])

    logger.info("get_previous_exercises returning array (hopefully): " + str(result))
    
    cur = conn.cursor()

    # Now get all the record for the session for this exercise in time order
    # get_session_query = sql.SQL("select exercise_details from public.exercise_performed where session_id = %s and exercise_id = %s")

    # Close the cursor and connection
    cur.close()
    conn.close()

    return result



def insertExerciseDetails(logger, exercise_details):
    
    logger.info("In insert_exercise_performed.py")
    
    # Establish a connection to the PostgreSQL database
    conn = psycopg2.connect(
        dbname="dbqiycouugxg3r",
        user="updqeo4pn0axa",
        password="j411@b@&cocg",
        host="localhost"
    )

    session_id = exercise_details['session']

    # Create a cursor object to execute SQL queries
    cur = conn.cursor()

    # Construct the SQL query for insertion
    insert_query = sql.SQL("INSERT INTO exercise_performed (session_id, utc_seconds, exercise_id, exercise_details) VALUES (%s, %s, %s, %s)")

    # Execute the query
    cur.execute(insert_query, (
        session_id,
        exercise_details['utcInSeconds'],
        exercise_details['exerciseId'],
        psycopg2.extras.Json(exercise_details)
    )
    )
                            
    # Commit the transaction
    conn.commit()

    cur = conn.cursor()

    # Now get all the record for the session for this exercise in time order
    # get_session_query = sql.SQL("select exercise_details from public.exercise_performed where session_id = %s and exercise_id = %s")

    # Close the cursor and connection
    cur.close()
    conn.close()


   