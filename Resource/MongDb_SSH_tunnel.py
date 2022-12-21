from ast import Return
from distutils.util import execute
from pdb import find_function
from gridfs import Database
import pymongo
import paramiko
import pandas as pd
from paramiko import SSHClient
from sshtunnel import SSHTunnelForwarder
from os.path import expanduser
from pymongo import MongoClient
from sshtunnel import SSHTunnelForwarder
import pymongo

def execute_mongodb_query():
    from sshtunnel import SSHTunnelForwarder
    import pymongo
    MKEY =paramiko.RSAKey.from_private_key_file('E:\IOT\VS\SSHKEY','michael')
    MONGO_HOST = '157.245.110.89'
    MONGO_PORT =    22 
    SERVER_USER   = 'michael'
    PRIVATE_KEY ='D:\RobotFrameWork\IOT\SSHKEY'
    SERVER_PASS = 'michael'
    MONGO_USER='user_mongo'
    MONGO_PASS ='pass_mongo'

    MONGO_DB = 'iotplatform'

    # define ssh tunnel
    server = SSHTunnelForwarder(
     (MONGO_HOST,MONGO_PORT),
        ssh_username=SERVER_USER,
        ssh_pkey= MKEY,
        remote_bind_address=('127.0.0.1', 27017))

    # start ssh tunnel
    server.start()

    connection = pymongo.MongoClient('127.0.0.1', server.local_bind_port)
    print (connection)
    db = connection[MONGO_DB]
    
    # data = db.list_collection_names()
    data = db.iot_31_data.find_one({"serialNo": "XDKjio","Light": "01"})
    connection.close()
    server.stop()
    return data
    

def Downlink_History_Mongodb_Query():
    from sshtunnel import SSHTunnelForwarder
    import pymongo
    MKEY =paramiko.RSAKey.from_private_key_file('E:\IOT\VS\SSHKEY','michael')
    MONGO_HOST = '157.245.110.89'
    MONGO_PORT =    22 
    SERVER_USER   = 'michael'
    PRIVATE_KEY ='D:\RobotFrameWork\IOT\SSHKEY'
    SERVER_PASS = 'michael'
    MONGO_USER='user_mongo'
    MONGO_PASS ='pass_mongo'

    MONGO_DB = 'iotplatform'

    # define ssh tunnel
    server = SSHTunnelForwarder(
     (MONGO_HOST,MONGO_PORT),
        ssh_username=SERVER_USER,
        ssh_pkey= MKEY,
        remote_bind_address=('127.0.0.1', 27017))

    # start ssh tunnel
    server.start()

    connection = pymongo.MongoClient('127.0.0.1', server.local_bind_port)
    print (connection)
    db = connection[MONGO_DB]
    
    # data = db.list_collection_names()
    data = db.device_data_config.find_one({"protocol":"mqtt","serialNo": "XDK1318","transactionId":"20220803184500","status": "Pending"})
    connection.close()
    server.stop()
    return data
# def data_call(collection_name, query={}):
#     from sshtunnel import SSHTunnelForwarder
#     import pymongo

#     MONGO_HOST = '157.245.110.89' 
#     SERVER_USER   = 'yogesh'
#     PRIVATE_KEY ='E:/IOT/VS/arunidea'
#     SSH_password = 'Yogu@IOTPT'

#     MONGO_USER='user_mongo'
#     MONGO_PASS ='pass_mongo'

#     MONGO_DB = "iotplatform"

#     # define ssh tunnel
#     server = SSHTunnelForwarder(
#         MONGO_HOST,
#         ssh_username=SERVER_USER,
#         ssh_pkey=PRIVATE_KEY,
#         remote_bind_address=('127.0.0.1', 27017)
#     )

#     # start ssh tunnel
#     server.start()

#     connection = pymongo.MongoClient('127.0.0.1', server.local_bind_port)
#     db = connection[MONGO_DB]

#     data = db[iot_31_data].find(serialNo)
#     return data
