from flask import Flask
import socket
from flask_mysqldb import MySQL
import json
app = Flask(__name__)
app.config['MYSQL_HOST'] = 'db'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'senha123'
app.config['MYSQL_DB'] = 'meubanco'
mysql = MySQL(app)


hostname = socket.gethostname()
txt = f'Python Container ID: {hostname}'


@app.route('/')
def main():
    return txt

@app.route('/users')
def user():

    cur = mysql.connection.cursor()
    cur.execute('''SELECT * FROM users''')
    row_headers=[x[0] for x in cur.description]
    rv = cur.fetchall()
    json_data=[]
    for result in rv:
        json_data.append(dict(zip(row_headers,result)))
    return txt+json.dumps(json_data)

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0',port=80)
