# docker buildx build --no-cache --platform linux/amd64 -t <REPO>/serverx:v0.0.1 .
# docker login -u <UNAME> -p <PASS> <REPO>
# docker push <REPO>/serverx:v0.0.1


deploy:
	docker buildx build --no-cache --platform linux/amd64 -t cr.selcloud.ru/docker--new/buildname:v0.0.1 .
	docker login -u token -p CRgAAAAAeF5U177duPMdTkbnE7Gb0RS5S8W9gjpu cr.selcloud.ru/docker--new
	docker push cr.selcloud.ru/docker--new/buildname:v0.0.1