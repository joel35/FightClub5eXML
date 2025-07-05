.ONESHELL:

include Personal
export

IMAGE = xslt-processor
RUN_SCRIPT = run.sh
WORKDIR = /app
BRANCH = master

PHONY: build run copy rebase

build:
	docker build -t $(IMAGE) .

run:
	docker run --rm \
		--volume "$(shell pwd):$(WORKDIR)" \
		--workdir $(WORKDIR) \
		$(IMAGE) \
		./$(RUN_SCRIPT)

copy:
	cp Compendiums/* $(COMPENDIUM_PATH)/

rebase:
	git fetch upstream
	git checkout $(BRANCH)
	git rebase upstream/$(BRANCH)