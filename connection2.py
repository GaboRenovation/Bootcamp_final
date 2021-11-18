import psycopg2
try:
    connection = psycopg2.connect(user = "postgres",
                                  password = "superstore",
                                  host = "superstoredb.c9p2luakmclc.us-east-2.rds.amazonaws.com",
                                  port = "5432",
                                  database = "postgres")

    cursor = connection.cursor()
    # Print PostgreSQL Connection properties
    print ( connection.get_dsn_parameters(),"\n")

    # Print PostgreSQL version
    cursor.execute("SELECT version();")
    record = cursor.fetchone()
    print("You are connected to - ", record,"\n")

except (Exception, psycopg2.Error) as error :
    print ("Error while connecting to PostgreSQL", error)
