# Import the Flask class from the flask package
from flask import Flask
app = Flask(__name__)

# Create an instance of the Flask application
# Define a route for the root URL ('/')
@app.route('/')
def hello():
    return "Hello from Flask Healthcheck Demo!"

    # You can add more routes below to handle different URLs


# Run the application
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
