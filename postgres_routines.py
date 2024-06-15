import psycopg2
import psycopg2.extras
from psycopg2 import sql
import logging

logging = logging.getLogger(__name__)  # something else should have initialized it


def get_connection():
    return psycopg2.connect(
        dbname="dbqiycouugxg3r",
        user="updqeo4pn0axa",
        password="j411@b@&cocg",
        host="localhost"
    )


def get_previous_exercises(exercise_id):
    logging.info("get_previous_exercises: " + exercise_id)

    conn = get_connection()

    cur = conn.cursor()

    sql = "SELECT exercise_details FROM public.exercise_performed WHERE exercise_id = %s ORDER BY id DESC LIMIT 3"
    cur.execute(sql, (exercise_id,))
    rows = cur.fetchall()
    result = []
    for row in rows:
        result.append(row[0])

    logging.info("returning array (hopefully): " + str(result))

    cur = conn.cursor()

    cur.close()
    conn.close()

    return result


def get_exercise_names():
    conn = get_connection()

    cur = conn.cursor()

    sql = "SELECT id,name FROM public.exercise_name order by name"
    logging.info(sql)
    cur.execute(sql)
    rows = cur.fetchall()

    logging.info("returning array " + str(rows))

    cur = conn.cursor()

    cur.close()
    conn.close()

    return rows


def insert_exercise_details(exercise_details):
    conn = get_connection()

    session_id = exercise_details['session']

    cur = conn.cursor()

    insert_query = sql.SQL(
        "INSERT INTO exercise_performed (session_id, utc_seconds, exercise_id, exercise_details) VALUES (%s, %s, %s, "
        "%s)")

    cur.execute(insert_query, (
        session_id,
        exercise_details['utcInSeconds'],
        exercise_details['exerciseId'],
        psycopg2.extras.Json(exercise_details)
    )
                )

    conn.commit()

    cur = conn.cursor()

    cur.close()
    conn.close()


def insert_exercise_type(exercise_type_details):
    conn = get_connection()

    cur = conn.cursor()

    insert_query = sql.SQL(
        "INSERT INTO exercise_type (id, exercise_type_name, report_page_fields) VALUES (%s, %s, %s, %s)")

    cur.execute(insert_query, (
        exercise_type_details['id'],
        exercise_type_details['name'],
        exercise_type_details
    )
                )

    conn.commit()

    cur = conn.cursor()

    cur.close()
    conn.close()
