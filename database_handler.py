import pymysql.cursors
import json
import logging
import date_time_helper as dth


class Database_Handler:

    def __init__(self, logger):
        self.connection = pymysql.connect(host='localhost',
             user='u1ndnewhtaggd',
             password='gkwtoyVdgta2qL7bj4Bf',
             database='dbrdyg72xqebv1',
             cursorclass=pymysql.cursors.DictCursor)
        self.logger = logger
        self.logger.info(dth.now_with_delimiter(' ') + ' In Database_Handler init ')
        

    def get_all_exercises(self):
        self.logger.debug(dth.now_with_delimiter(' ') + 'in get_all_exercises')
        with self.connection.cursor() as cursor:
            sql = "SELECT * FROM ExerciseName order by exercisename"
            self.logger.debug(dth.now_with_delimiter(' ') + 'get_all_exercises: ' + sql)
            try: 
                cursor.execute(sql) 
                result = cursor.fetchall() 
                return True, json.dumps(result)
            except:
                self.logger.error(dth.now_with_delimiter(' ') + 'failed to get all exercise records')
                return False, None

    def insert_session(self):
        self.logger.debug(dth.now_with_delimiter(' ') + 'in insert_session')
        with self.connection.cursor() as cursor:
            sql="INSERT INTO Session(userid) VALUES (1)"
            self.logger.debug(dth.now_with_delimiter(' ') + 'insert_session: ' + sql)
            try: 
                cursor.execute(sql)
                session_id = self.connection.insert_id()
                self.logger.debug(dth.now_with_delimiter(' ') + 'insert_session: id inserted = ' + str(session_id))
                inserted_row_id = self.connection.insert_id()
                self.connection.commit()
                return True, json.dumps({'id': inserted_row_id})
            except:
                self.logger.error(dth.now_with_delimiter(' ') + 'failed to insert new session')
                return False, None

            return True, json.dumps({'id':session_id})

    def insert_exercise_definition(self, exercise_name, exercise_type):
        self.logger.debug(dth.now_with_delimiter(' ') + 'in insert_exercise_definition')
        with self.connection.cursor() as cursor:
            sql="INSERT INTO ExerciseName(exercisename, exercisetype) VALUES ('{}',{})".format(exercise_name,exercise_type)
            self.logger.debug(dth.now_with_delimiter(' ') + 'insert_exercise_definition: ' + sql)
            try:
                cursor.execute(sql)
                inserted_session_id = self.connection.insert_id()
                self.logger.debug(dth.now_with_delimiter(' ') + 'insert_exercise_definition: id inserted = ' + str(inserted_session_id))
                self.connection.commit()
                return True, json.dumps({'id':inserted_session_id})
            except:
                self.logger.error(dth.now_with_delimiter(' ') + 'failed to insert new exercise definition')
                return False, None

    def delete_exercise_definition(self, exercise_id):
        self.logger.debug(dth.now() + ' in delete_exercise_definition with id: ' + str(exercise_id))
        with self.connection.cursor() as cursor:
            sql="DELETE FROM ExerciseName WHERE id={}".format(exercise_id)
            self.logger.debug(dth.now_with_delimiter(' ') + 'delete_exercise_definition: ' + sql)
            try:
                cursor.execute(sql)
                self.connection.commit()
                rows = cursor.rowcount
                self.logger.debug(dth.now_with_delimiter(' ') + 'delete_exercise_definition rows deleted : ' + str(rows))
                return True, json.dumps({'rows': rows})
            except:
                self.logger.error(dth.now_with_delimiter(' ') + 'failed to delete exercise definition')
                return False, None

    def delete_session(self, session_id):
        self.logger.debug(dth.now() + ' in delete_session with id: ' + str(session_id))
        with self.connection.cursor() as cursor:
            sql="DELETE FROM Session WHERE id={}".format(session_id)
            self.logger.debug(dth.now_with_delimiter(' ') + 'delete_session: ' + sql)
            try:
                cursor.execute(sql)
                self.connection.commit()
                rows = cursor.rowcount
                self.logger.debug(dth.now_with_delimiter(' ') + 'delete_session rows deleted : ' + str(rows))
                return True, json.dumps({'rows': rows})
            except:
                self.logger.error(dth.now_with_delimiter(' ') + 'failed to delete session')
                return False, None

