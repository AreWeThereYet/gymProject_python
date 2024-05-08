import psycopg2
import psycopg2.extras
from psycopg2 import sql
import logging

logging = logging.getLogger(__name__)  # something else should have initialized it

conn = psycopg2.connect(
        dbname="dbqiycouugxg3r",
        user="updqeo4pn0axa",
        password="j411@b@&cocg",
        host="localhost"
    )


def get_previous_exercises(exercise_id):
    logging.info("get_previous_exercises: " + exercise_id)

    # Establish a connection to the PostgreSQL database

    # Create a cursor object to execute SQL queries
    cur = conn.cursor()

    sql = "SELECT exercise_details FROM public.exercise_performed WHERE exercise_id = %s ORDER BY id DESC LIMIT 3"
    cur.execute(sql, (exercise_id,))
    rows = cur.fetchall()
    result = []
    for row in rows:
        result.append(row[0])

    logging.info("returning array (hopefully): " + str(result))

    cur = conn.cursor()

    # Now get all the record for the session for this exercise in time order
    # get_session_query = sql.SQL("select exercise_details from public.exercise_performed where session_id = %s and exercise_id = %s")

    # Close the cursor and connection
    cur.close()
    conn.close()

    return result


def get_exercise_names():

    # Create a cursor object to execute SQL queries
    cur = conn.cursor()

    sql = "SELECT id,name FROM public.exercise_name order by name"
    logging.info(sql)
    cur.execute(sql)
    rows = cur.fetchall()

    # result = []
    # for row in rows:
    #     result.append([row[0],row[1]])

    logging.info("returning array " + str(rows))

    cur = conn.cursor()

    # Now get all the record for the session for this exercise in time order
    # get_session_query = sql.SQL("select exercise_details from public.exercise_performed where session_id = %s and exercise_id = %s")

    # Close the cursor and connection
    cur.close()
    conn.close()

    return rows


def insert_exercise_details(exercise_details):

    session_id = exercise_details['session']

    # Create a cursor object to execute SQL queries
    cur = conn.cursor()

    # Construct the SQL query for insertion
    insert_query = sql.SQL(
        "INSERT INTO exercise_performed (session_id, utc_seconds, exercise_id, exercise_details) VALUES (%s, %s, %s, %s)")

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

    # Close the cursor and connection
    cur.close()
    conn.close()
