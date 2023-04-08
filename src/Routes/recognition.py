from flask import request,jsonify
from src.Controllers.recognitionController import getRecognitionAll,getRecognitionUser
def recognitionRoute (app):
    @app.route('/recognitions', methods = ['GET'])
    def recognition():
        if request.method == 'GET':
            if 'code' in request.args:
                code = request.args.get('code')
                response = getRecognitionUser(code)
                return jsonify(
                        response = response
                    )
            else:
                response = getRecognitionAll()
                return jsonify(
                        response = response
                    )