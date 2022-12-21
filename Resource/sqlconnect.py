from ast import Return
import pymysql
import paramiko
import pandas as pd
from paramiko import SSHClient
from sshtunnel import SSHTunnelForwarder
from os.path import expanduser

def connectdb(searchquery):
    mypkey = paramiko.RSAKey.from_private_key_file('E:/IOT/VS/SSHKEY','michael')
    sql_hostname = '127.0.0.1'
    sql_username = 'root'
    sql_password = 'Iot@1234'
    sql_main_database = 'iot_platform'
    sql_port = 3306
    ssh_host = '157.245.110.89'
    ssh_user = 'michael'
    ssh_port = 22

    with SSHTunnelForwarder(
        (ssh_host, ssh_port),
         ssh_username=ssh_user,
        ssh_pkey=mypkey,
        remote_bind_address=(sql_hostname, sql_port)) as tunnel:
        conn = pymysql.connect(host='127.0.0.1', user=sql_username,
        passwd=sql_password, db=sql_main_database,
        port=tunnel.local_bind_port)
        curs = conn.cursor(pymysql.cursors.DictCursor)
        curs.execute(searchquery)
        data = curs.fetchone()
        conn.close()
        return data





