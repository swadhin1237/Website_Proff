from flask import Flask, render_template

app = Flask(__name__)


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/prof')
def prof():
    return render_template('prof.html')


if __name__ == '__main__':
    app.run(debug=True)
