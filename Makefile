REPOSITORY='couchbase/static_routes'
VERSION='1.0.0'

all:
	docker build -t ${REPOSITORY}:${VERSION} .

# vi: ts=8 noet:
