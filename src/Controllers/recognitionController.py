from Connection.Connection import connect,connection_select_prueba

def getRecognitionAll():
    dataBase = connect()
    cursorObject = dataBase.cursor()
    try:
        stmt = ("SELECT "
                    "b.code,"
                    "d.name,"
                    "d.lastName,"
                    "d.number,"
                    "d.birthday,"
                    "d.email,"
                    "b.idRole,"
                    "e.name 'name_role',"
                    "b.idUser,"
                    "c.idRecognition,"
                    "c.name 'name_recognition' "
                "FROM "
                    "user_recognition a,"
                    "user b,"
                    "recognition c,"
                    "profile d,"
                    "role e "
                "WHERE "
                    "a.idUser = b.idUser AND "
                    "a.idRecognition = c.idRecognition AND "
                    "b.idProfile = d.idProfile AND "
                    "b.idRole = e.idRole AND "
                    "c.status = 0 AND "
                    "a.status = 0 AND "
                    "a.idRecognition = 3 "
                "ORDER BY "
                    "b.code ASC")
        myresult = connection_select_prueba(cursorObject,stmt)
        cursorObject.close()
        dataBase.close()
        return myresult
    except:
        cursorObject.close()
        dataBase.close()
        return { 'flag' : 0 ,'error':'getRecognitionAll'}

def getRecognitionUser(code):
    dataBase = connect()
    cursorObject = dataBase.cursor()
    try:
        stmt = ("SELECT "
                    "a.code,b.name,b.lastName,b.number,b.birthday,b.email,b.securityResponse,a.idRole,c.name 'name_role',a.idUser "
                "FROM "
                    "user a,"
                    "profile b, "
                    "role c "
                "WHERE "
                    "a.code = '"+code+"' and "
                    "a.idProfile=b.idProfile and "
                    "a.idRole=c.idRole")
        myresult = connection_select_prueba(cursorObject,stmt)
        data = myresult[0]
        cursorObject.close()
        dataBase.close()
        return {
            'code': data[0],
            'name':data[1],
            'lastName':data[2],
            'number':data[3],
            'birthday':data[4],
            'email':data[5],
            'securityResponse':data[6],
            'idRole':data[7],
            'name_role':data[8],
            'idUser':data[9],
            'flag' : 1
        }
    except:
        cursorObject.close()
        dataBase.close()
        return { 'flag' : 0 ,'error':'getRecognitionUser'}