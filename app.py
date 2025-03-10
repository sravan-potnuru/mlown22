from flask import Flask, render_template, request, jsonify
import pickle
import numpy as np
from flask import Flask, render_template, request, redirect, url_for, session
from flask_mysqldb import MySQL
import MySQLdb.cursors
import re
from flask_session import Session

from flask import Flask, render_template, request, jsonify



# app = Flask(__name__
#              template_folder='templates',  # Default, but good to specify
#             static_folder='static')
app = Flask(__name__, 
            template_folder='templates',  # Default, but good to specify
            static_folder='static')       # Default, but good to specify
 
 
app.secret_key = 'sravan123'
 
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'sravan123'
app.config['MYSQL_DB'] = 'prediction'
app.config['SESSION_TYPE'] = 'filesystem'


mysql = MySQL(app)
park= pickle.load(open("model/Parkinsons_Model.pkl","rb"))
diabet=pickle.load(open("model/Diabetes_Model.pkl","rb"))
predia=pickle.load(open("model/Diabetes_Preprocessor.pkl","rb"))
heart22=pickle.load(open("model/heart.pkl","rb"))
preheart=pickle.load(open("model/heart_Model.pkl","rb"))
liver22=pickle.load(open('model/liver1.pkl',"rb") )
kid=pickle.load(open('model/kidney.pkl',"rb") )

@app.route('/login', methods =['GET', 'POST'])
def login():
    if 'username' in session:
        return render_template('login.html',s=session['username'], msg = "You are already logged in")
    else:
        msg = ''
        if request.method == 'POST' and 'username' in request.form and 'password' in request.form:
            username = request.form['username']
            password = request.form['password']
            cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
            cursor.execute('SELECT * FROM accounts1 WHERE username = % s AND password = % s', (username, password, ))
            account = cursor.fetchone()
            if account:
                session['loggedin'] = True
                session['id'] = account['id']
                session['username'] = account['username']
                msg = 'Logged in successfully !'
                return render_template('index.html', msg = msg)
            else:
                msg = 'Incorrect username / password !'
        return render_template('login.html', msg = msg)

@app.route('/logout')
def logout():
    session.pop('username',None)
    return render_template("index.html")
@app.route('/')
def index():
    if 'username' in session:
        return render_template('index.html',s=session['username'])
    else:
        return render_template('index.html')

@app.route('/register', methods=['GET', 'POST'])
def register():
    if 'username ' in session:
        return render_template('register.html',s=session['username'],msg="Logout And Try")
    else:
        if request.method == 'POST':
            msg = ''
            if request.form['username'] and request.form['password'] and request.form['email']:
                username = request.form['username']
                password = request.form['password']
                email = request.form['email']
                cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
                cursor.execute('SELECT * FROM accounts1 WHERE username = %s', (username,))
                account = cursor.fetchone()
                if account:
                    msg = 'Account already exists!'
                elif not re.match(r'[^@]+@[^@]+.[^@]+', email):
                    msg = 'Invalid email address!'
                elif not re.match(r'[A-Za-z0-9]+', username):
                    msg = 'Username must contain only characters and numbers!'
                elif not username or not password or not email:
                    msg = 'Please fill out the form!'
                else:
                    
                    # Account doesn't exist, and the form data is valid, so insert the new account into the accounts table
                    cursor.execute('INSERT INTO accounts1 VALUES (NULL, %s, %s, %s)', (username, password, email,))
                    mysql.connection.commit()
                    msg = 'You have successfully registered!'
            else:
                msg = 'Please fill out the form!'
           
            return render_template('register.html', s=session['username'],msg=msg)
    
    return render_template('register.html')


@app.route('/parkinson', methods=["GET", "POST"])
def parkinsons():
    if 'username' in session:
        if request.method == 'POST':
            try:
                features=[float(x) for x in request.form.values()]
                feat=[np.array(features)]
                result=park.predict(feat)
                return render_template("parkinson.html", final_result=result,s=session['username'])
            except:
                pass        
        return render_template('parkinson.html',s=session['username'])
    else:
        return render_template('parkinson.html')
@app.route('/kidney', methods=["GET", "POST"])
def kidney():
    if 'username' in session:
        if request.method == 'POST':
            try:
                features=[float(x) for x in request.form.values()]
                feat=[np.array(features)]
                result=kid.predict(feat)
                return render_template("kidney22.html", final_result=result,s=session['username'])
            except:
                pass        
        return render_template('kidney22.html',s=session['username'])
    else:
        return render_template('kidney22.html')
@app.route('/liver', methods=["GET", "POST"])
def liver():
        if 'username' in session:
            if request.method == 'POST':
                features=[float(x) for x in request.form.values()]
                print(features)
                feat=[np.array(features)]
                result=liver22.predict(feat)
                return render_template("liver.html", final_result=result,s=session['username'])
            return render_template('liver.html',s=session['username'])
        else:
            return render_template('liver.html')

# routing for the diabetes
@app.route('/diabetes',methods=["GET","POST"])
def diabetes():
    if 'username' in session:
        if request.method=='POST':
            try:
                features=[float(x) for x in request.form.values()] 
                feat=[np.array(features)]
                pre=predia.transform(feat)
                result=diabet.predict(pre)
                return render_template("diabetes.html",final_result=result,s=session['username'])
            except:
                pass
        return render_template( 'diabetes.html',s=session['username']) 
    else:
        return render_template('diabetes.html')

@app.route('/heart',methods=['GET','POST'])
def heart():
    if 'username' in session:
        if request.method=='POST':
            try:
                features=[float(x) for x in request.form.values()]
                feat=[np.array(features)]
                print(feat)
                pre1=preheart.transform(feat)
                print(pre1)
                result=heart22.predict(pre1)
                return render_template("heart2.html", final_result=result,s=session['username'])
            except:
                pass
        return render_template( 'heart2.html',s=session['username']) 
    else:
        return render_template('heart2.html')
@app.route('/profile')
def profile():
    return render_template("profile.html")

if __name__ == "__main__":
    app.run(debug=True)
