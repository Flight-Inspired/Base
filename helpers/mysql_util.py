import MySQLdb

def get_connection():
    return MySQLdb.connect(host='db', user='root', password='password', database='dwh' )

