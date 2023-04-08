from Connection.Connection import connect,connection_insert_prueba,connection_select_prueba

def postHistory(idUser,idRecognition):
    dataBase = connect()
    cursorObject = dataBase.cursor()
    try:
        stmt = ("INSERT INTO history (idUser,idRecognition) VALUES (%s, %s)")
        data = (idUser,idRecognition)
        connection_insert_prueba(cursorObject,stmt,data)
        dataBase.commit()
        cursorObject.close()
        dataBase.close()
        return { 'flag' : 1}
    except:
        cursorObject.close()
        dataBase.close()
        return { 'flag' : 0 }

def getHistory():
    dataBase = connect()
    cursorObject = dataBase.cursor()
    try:
        stmt = ("SELECT "
                    "a.idHistory,"
                    "b.idUser,"
                    "b.code,"
                    "d.idProfile,"
                    "d.name,"
                    "d.lastName,"
                    "c.idRecognition,"
                    "c.name 'name_recognition',"
                    "e.idRole,"
                    "e.name 'name_role',"
                    "DATE_ADD(DATE_FORMAT(a.created_at, '%Y-%m-%d %H:%i:%s'), INTERVAL 1 HOUR) 'created_at' "
                "FROM "
                    "history a,"
                    "user b,"
                    "recognition c,"
                    "profile d,"
                    "role e "
                "WHERE "
                    "a.idUser = b.idUser AND "
                    "a.idRecognition = c.idRecognition AND "
                    "b.idProfile = d.idProfile AND "
                    "b.idRole = e.idRole AND "
                    "DATE_FORMAT(a.created_at, '%Y-%m-%d') = DATE_FORMAT(NOW(), '%Y-%m-%d')"
                "ORDER BY "
                    "a.created_at DESC")
        myresult = connection_select_prueba(cursorObject,stmt)
        cursorObject.close()
        dataBase.close()
        return myresult
    except:
        cursorObject.close()
        dataBase.close()
        return { 'flag' : 0 ,'error':'getHistory'}

def getHistoryUserNow(idUser):
    dataBase = connect()
    cursorObject = dataBase.cursor()
    try:
        stmt = ("SELECT "
                    "a.idUSer,"
                    "a.code,"
                    "("
                        "SELECT "
                            "CASE "
                                "WHEN COUNT(a.idUser) IS NULL THEN 0 "
                                "ELSE COUNT(a.idUser) "
                            "END "
                        "FROM "
                            "history a "
                        "WHERE " 
                            "DATE_FORMAT(a.created_at, '%Y-%m-%d') = DATE_FORMAT(NOW(), '%Y-%m-%d') AND "
                            "a.idUser = "+idUser+" "
                    ") 'count' "
                "FROM "
                    "user a "
                "WHERE "
                    "a.idUser = "+idUser)
        myresult = connection_select_prueba(cursorObject,stmt)
        data = myresult[0]
        cursorObject.close()
        dataBase.close()
        return {
            'idUSer': data[0],
            'code': data[1],
            'count':data[2],
            'flag' : 1
        }
    except:
        cursorObject.close()
        dataBase.close()
        return { 'flag' : 0 ,'error':'getHistoryUserNow'}