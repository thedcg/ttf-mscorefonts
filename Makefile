# Makefile
# Dockerfile を生成する

.PHONY: all
.PHONY: dockerfiles


all: dockerfiles


TAGS = \
       ubuntu-20.04 \
       ubuntu-22.04 \
       ubuntu-24.04 \
       ubuntu-latest \
       ubuntu-rolling \
       ubuntu-devel \
       debian-11 \
       debian-12 \
       debian-latest \
       debian-unstable \


dockerfiles:
	for TAG in $(TAGS); do \
	  mkdir -p $${TAG}; \
	  cat "Dockerfile.base.$${TAG}" \
	      "Dockerfile.common" \
	      > $${TAG}/Dockerfile; \
	done
