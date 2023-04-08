from flask import Flask
from src.Routes.user import userRoute
from src.Routes.profile import profileRoute
from src.Routes.history import historyRoute
from src.Routes.role import roleRoute
from src.Routes.recognition import recognitionRoute


app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World! My name is Bryan Arrivasplata Rojas, creador de esta RestApi\n WebSite: <a href="https://www.bryanarrivasplata.com">https://www.bryanarrivasplata.com</a> \n Linkedin: <a href="https://www.linkedin.com/in/bryan-daniell-arrivasplata-rojas-156508213/">bryan-daniell-arrivasplata-rojas</a> '

profileRoute(app)
userRoute(app)
historyRoute(app)
roleRoute(app)
recognitionRoute(app)



'''if __name__ == "__main__":
    app.run('0.0.0.0')'''