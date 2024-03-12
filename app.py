from flask import Flask, render_template
from database.connect import conn
from function import *
app = Flask(__name__)

# connect to database psql


@app.route('/')
def index():
    researchareas = get_all_researchareas()
    return render_template('index.html',resareas=researchareas)


@app.route('/researcharea/<research_area>')
def researcharea(research_area):
    proffs = get_proffs_by_research_area(research_area)
    return render_template('prof.html',proffs=proffs)


if __name__ == '__main__':
    app.run(debug=True)
