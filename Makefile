run:
	python -m flask run --host=0.0.0.0 --port=50052

build_db_image:
	docker build -t asia.gcr.io/hana-alaydrus/db-camera:latest ./mariadb/

# if no trigger at google container registry
# build_service_image:
# 	docker build -t asia.gcr.io/tugas-akhir-hana/camera-of-vehicle:latest .

push_gcp_image:
	docker push asia.gcr.io/hana-alaydrus/db-camera:latest
	# docker push asia.gcr.io/tugas-akhir-hana/camera-of-vehicle:latest