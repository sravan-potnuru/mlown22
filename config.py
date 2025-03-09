import os

class Config:
    SECRET_KEY = os.getenv('SECRET_KEY', 'sravan123')
    SQLALCHEMY_DATABASE_URI = os.getenv('DATABASE_URL', 'mysql+pymysql://root:sravan123@localhost/prediction')
    SQLALCHEMY_TRACK_MODIFICATIONS = False
