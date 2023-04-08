import mysql.connector
from decouple import config

def connect():
  return mysql.connector.connect(
    host=config('DB_HOST'),
    port=config('DB_PORT'),
    user=config('DB_USERNAME'),
    password=config('DB_PASSWORD'),
    database=config('DB_DATABASE')
  )

def connection_insert_prueba(cursorObject,insert_stmt, data):
    cursorObject.execute(insert_stmt, data)
    return cursorObject.rowcount

def connection_select_prueba(cursorObject,select_stmt):
    cursorObject.execute(select_stmt)
    return cursorObject.fetchall()

def connection_update_prueba(cursorObject,update_stmt):
    cursorObject.execute(update_stmt)
    return cursorObject.rowcount