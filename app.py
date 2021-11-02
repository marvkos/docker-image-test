from flask import Flask

app = Flask(__name__)

@app.route("/version")
def version():
    return { "version": 1 }
