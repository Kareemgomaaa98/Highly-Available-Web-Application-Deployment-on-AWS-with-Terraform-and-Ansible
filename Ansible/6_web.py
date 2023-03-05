#This code creates a new Flask application, defines a single route for the root URL (/),
#and returns a "Hello, World!" message when that route is accessed.

from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World! How can I assist you ?'

if __name__ == '__main__':
    app.run()