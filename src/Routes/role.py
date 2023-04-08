from flask import request,jsonify
from src.Controllers.roleController import getRoleAll
def roleRoute (app):
    @app.route('/roles', methods = ['GET'])
    def role():
        if request.method == 'GET':
            response = getRoleAll()
            return jsonify(
                    response = response
                )