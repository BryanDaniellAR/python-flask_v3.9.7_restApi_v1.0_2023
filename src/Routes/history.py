from flask import request,jsonify
from src.Controllers.historyController import postHistory,getHistory,getHistoryUserNow

def historyRoute (app):
    @app.route('/histories', methods = [ 'POST', 'GET'])
    def history():
        if request.method == 'GET':
            if 'idUser' in request.args:
                idUser = request.args.get('idUser')
                response = getHistoryUserNow(idUser)
                return jsonify(
                        response = response
                    )
            else:
                response = getHistory()
                return jsonify(
                        response = response
                    )
        if request.method == 'POST':
            idUser = request.form.get('idUser')
            idRecognition = request.form.get('idRecognition')
            response = postHistory(idUser,idRecognition)
            return jsonify(
                response = response
            # code = code,idCharge= idCharge,password= password,name= name,lastName= lastName,celphone= celphone,birthDate= birthDate,email= email,securityResponse= securityResponse
            )
        
        