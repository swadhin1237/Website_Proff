import psycopg2
conn=psycopg2.connect(
        database="bdvrniel",user="bdvrniel",password="PF4_XUIb5Y5ZoaK8WuzIKDJejF4d6R_J",host="satao.db.elephantsql.com",port="5432"
    )
if conn:
    print("connected to database")
else:
    print("not connected to database")