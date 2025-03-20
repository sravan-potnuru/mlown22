from flask import Flask, render_template, request, jsonify
import pickle
import numpy as np
from flask import Flask, render_template, request, redirect, url_for, session
from flask_mysqldb import MySQL
import MySQLdb.cursors
import re
from flask_session import Session

from flask import Flask, render_template, request, jsonify

import os
import numpy as np
from werkzeug.utils import secure_filename
from PIL import Image
from io import BytesIO

import numpy as np
import tensorflow as tf
# from tensorflow.keras.preprocessing import image
# from tensorflow.keras.models import load_model



# app = Flask(__name__
#              template_folder='templates',  # Default, but good to specify
#             static_folder='static')
app = Flask(__name__, 
            template_folder='templates',  # Default, but good to specify
            static_folder='static')       # Default, but good to specify
 
# def preprocess_image(img_path, target_size=(224, 224)):  # Update size if different
#     img = image.load_img(img_path, target_size=target_size)
#     img_array = image.img_to_array(img)
#     img_array = np.expand_dims(img_array, axis=0)  # Add batch dimension
#     img_array = img_array / 255.0  # Normalize
#     return img_array

# def predict_risk(image_path):
#     processed_image = preprocess_image(image_path)
#     predictions = eye.predict(processed_image)
#     return predictions




UPLOAD_FOLDER = 'static/uploads'
ALLOWED_EXTENSIONS = {'png', 'jpg', 'jpeg'}
if not os.path.exists(UPLOAD_FOLDER):
    os.makedirs(UPLOAD_FOLDER)
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
app.config['MAX_CONTENT_LENGTH'] = 5 * 1024 * 1024  # 5MB max file size

def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

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
# eye=pickle.load(open('C:\Users\HP\OneDrive\Desktop\mlown22\model\alexnet_model.h5',"rb"))

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
    if 'username' in session:
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


# Add this import to your app.py
# from retinal_model import RetinalCVDPredictor

# Initialize the model
# retinal_predictor = RetinalCVDPredictor('model/retinal_cvd_model.h5')

# Updated route with model integration
# @app.route('/retinal', methods=['GET', 'POST'])
# def retinal():
#     if 'username' in session:
#         if request.method == 'POST':
#             if 'retinalImage' not in request.files:
#                 return render_template('retinal.html', error="No file part", s=session['username'])

#             file = request.files['retinalImage']

#             if file.filename == '':
#                 return render_template('retinal.html', error="No selected file", s=session['username'])

#             if file and allowed_file(file.filename):
#                 filename = secure_filename(file.filename)
#                 filepath = os.path.join(app.config['UPLOAD_FOLDER'], filename)
#                 file.save(filepath)

#                 try:
#                     # Predict using the model
#                     predictions = predict_risk(filepath)
#                     risk_percentage = np.argmax(predictions)  # Assuming your model outputs probabilities for classes 0-4

#                     # Map the prediction to a risk level and recommendation
#                     risk_levels = ["Very Low", "Low", "Moderate", "High", "Very High"]
#                     recommendations = [
#                         "Maintain a healthy lifestyle with regular check-ups.",
#                         "Consider lifestyle changes and consult with a healthcare provider.",
#                         "Consult with a healthcare provider for further evaluation.",
#                         "Immediate consultation with a healthcare provider is recommended.",
#                         "Urgent medical attention is required."
#                     ]

#                     risk_level = risk_levels[risk_percentage]
#                     recommendation = recommendations[risk_percentage]

#                     return render_template('retinal.html',
#                                            prediction_result=risk_percentage,
#                                            risk_level=risk_level,
#                                            recommendation=recommendation,
#                                            image_path=os.path.join('uploads', filename),
#                                            s=session['username'])

#                 except Exception as e:
#                     return render_template('retinal.html',
#                                            error=f"Error processing image: {str(e)}",
#                                            s=session['username'])
#             else:
#                 return render_template('retinal.html',
#                                        error="Invalid file format. Please upload a JPG, PNG, or JPEG file.",
#                                        s=session['username'])

#         return render_template('retinal.html', s=session['username'])
#     else:
#         if request.method == 'POST':
#             if 'retinalImage' not in request.files:
#                 return render_template('retinal.html', error="No file part")

#             file = request.files['retinalImage']

#             if file.filename == '':
#                 return render_template('retinal.html', error="No selected file")

#             if file and allowed_file(file.filename):
#                 filename = secure_filename(file.filename)
#                 filepath = os.path.join(app.config['UPLOAD_FOLDER'], filename)
#                 file.save(filepath)

#                 try:
#                     # Predict using the model
#                     predictions = predict_risk(filepath)
#                     risk_percentage = np.argmax(predictions)  # Assuming your model outputs probabilities for classes 0-4

#                     # Map the prediction to a risk level and recommendation
#                     risk_levels = ["Very Low", "Low", "Moderate", "High", "Very High"]
#                     recommendations = [
#                         "Maintain a healthy lifestyle with regular check-ups.",
#                         "Consider lifestyle changes and consult with a healthcare provider.",
#                         "Consult with a healthcare provider for further evaluation.",
#                         "Immediate consultation with a healthcare provider is recommended.",
#                         "Urgent medical attention is required."
#                     ]

#                     risk_level = risk_levels[risk_percentage]
#                     recommendation = recommendations[risk_percentage]

#                     return render_template('retinal.html',
#                                            prediction_result=risk_percentage,
#                                            risk_level=risk_level,
#                                            recommendation=recommendation,
#                                            image_path=os.path.join('uploads', filename))

#                 except Exception as e:
#                     return render_template('retinal.html',
#                                            error=f"Error processing image: {str(e)}")
#             else:
#                 return render_template('retinal.html',
#                                        error="Invalid file format. Please upload a JPG, PNG, or JPEG file.")

#         return render_template('retinal.html')

@app.route('/retinal', methods=['GET', 'POST'])
def retinal():
    return render_template("retinal.html")



if __name__ == "__main__":
    app.run(debug=True)
