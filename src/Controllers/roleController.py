from Connection.Connection import connect,connection_select_prueba
def getRoleAll():
    dataBase = connect()
    cursorObject = dataBase.cursor()
    try:
        stmt = "SELECT idRole,name FROM role"
        myresult = connection_select_prueba(cursorObject,stmt)
        cursorObject.close()
        dataBase.close()
        return myresult
    except:
        cursorObject.close()
        dataBase.close()
        return { 'flag' : 0 ,'error':'getRoleAll'}
