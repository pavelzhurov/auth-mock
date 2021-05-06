from flask import Flask
from flask_cors import CORS


app = Flask(__name__)

cors = CORS(app, resources={r"/*": {"origins": "https://app.example.com"}})


@app.route('/')
def mock():
    return "Access granted"
