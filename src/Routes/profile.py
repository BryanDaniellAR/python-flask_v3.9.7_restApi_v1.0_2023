from flask import request,jsonify
from src.Controllers.profileController import postProfile,getProfileEmail,getProfileUser

def profileRoute (app):
    @app.route('/profiles', methods = [ 'POST', 'GET'])
    def profile():
        if request.method == 'GET':
            if 'email' in request.args:
                email = request.args.get('email')
                response = getProfileEmail(email)
                return jsonify(
                        response = response
                    )
            else:
                idUser = request.args.get('idUser')
                response = getProfileUser(idUser)
                return jsonify(
                        response = response
                    )
        if request.method == 'POST':
            name = request.form.get('name')
            lastName = request.form.get('lastName')
            birthday = request.form.get('birthday')
            number = request.form.get('number')
            email = request.form.get('email')
            securityResponse = request.form.get('securityResponse')
            response = postProfile(name,lastName,number,birthday,email,securityResponse)
            return jsonify(
                response = response
            # code = code,idCharge= idCharge,password= password,name= name,lastName= lastName,celphone= celphone,birthDate= birthDate,email= email,securityResponse= securityResponse
            )