from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def index():
    return "<body style='background:black;color:white'>Hello World</body>"

@app.route('/status', methods=['GET'])
def get_status():
    return jsonify({"status":"good"})

if __name__ == '__main__':
    app.run("0.0.0.0", debug=True, port=80)
