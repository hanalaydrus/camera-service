run:
	gunicorn --worker-class gthread --threads 5 -t 3600 -b 0.0.0.0:50052 main:app

build_db_image:
	docker build -t asia.gcr.io/tugas-akhir-hana/mariadb-camera:latest ./mariadb/

# if no trigger at google container registry
# build_service_image:
# 	docker build -t asia.gcr.io/tugas-akhir-hana/camera-of-vehicle:latest .

push_gcp_image:
	docker push asia.gcr.io/tugas-akhir-hana/mariadb-camera:latest
	# docker push asia.gcr.io/tugas-akhir-hana/camera-of-vehicle:latest