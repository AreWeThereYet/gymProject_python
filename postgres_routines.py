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

    sql = "SELECT exercise_details FROM public.exercise_performed WHERE exercise_id = %s ORDER BY id DESC LIMIT 20"
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


def insert_exercise_details(exercise_details): # Expects Python Object not json string
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
    cur.close()
    conn.close()


# Return a row so it's a tuple like (243,).  Therefore calling routine must get the first value [0]
def get_highest_exercise_performed_entry():
    conn = get_connection()
    cur = conn.cursor()

    sql = "SELECT max(id) max_id FROM public.exercise_performed "
    logging.info(sql)
    cur.execute(sql)
    tuple = cur.fetchone()
    logging.info("returning highest value " + str(tuple))

    cur.close()
    conn.close()

    return tuple


def delete_after_id_exercise_performed_entries(after_id):
    conn = get_connection()
    cur = conn.cursor()

    sql = "DELETE FROM public.exercise_performed WHERE id > %s"
    logging.info(sql)
    cur.execute(sql, (after_id,)) # Note the force to tuple
    rowcount = cur.rowcount

    logging.info("rows deleted value " + str(rowcount))

    cur.close()
    conn.commit()
    conn.close()
    return rowcount

def get_last_exercises_performed():
    sql = """ 
    SELECT ep.id,utc_seconds,name 
    FROM public.exercise_performed ep, public.exercise_name en 
    WHERE ep.exercise_id = en.id 
    ORDER BY ep.id DESC LIMIT 100
    """
    conn = get_connection()

    cur = conn.cursor()

    logging.info(sql)
    cur.execute(sql)
    rows = cur.fetchall()

    logging.info("returning array " + str(rows))

    cur = conn.cursor()

    cur.close()
    conn.close()

    return rows