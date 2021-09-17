.PHONY: serve build


serve:
	docker compose up hugo 

build:
	docker compose run --rm hugo
