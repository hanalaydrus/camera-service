from flask import Flask, Response
import MySQLdb
import os
import json

app = Flask(__name__)

@app.route("/camera/<int:camera_id>")
def show_camera_data(camera_id):
	# get data from dtabase
	# Open database connection
	db = MySQLdb.connect(	host=os.environ.get("DB_HOST"),
							port=int(os.environ.get("DB_PORT")),
							user="root",
							passwd="root",
							db="camera" )

	# prepare a cursor object using cursor() method
	cursor = db.cursor()

	sql = ("SELECT url, street_name, latitude, longitude FROM camera WHERE camera_id=%s")

	try:
	  	# Execute the SQL command
	   	cursor.execute(sql, (camera_id,))
	   	# Fetch all the rows in a list of lists.

	   	for (url, street_name, latitude, longitude) in cursor:
	   		data = [{"status" : "success", "camera_id": camera_id, "url": url, "street_name": street_name, "latitude": latitude, "longitude": longitude}]

	except:
		print ("Error: unable to fecth data")
		data = [{"status" : "failed"}]

	# disconnect from server
	cursor.close()
	db.close()

	# return jsonify
	return Response(json.dumps(data), mimetype='application/json')


if __name__ == "__main__":
	app.run()