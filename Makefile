.ONESHELL:

IMAGE = xslt-processor
RUN_SCRIPT = run.sh
WORKDIR = /app
BRANCH = master

PHONY: build run rebase

build:
	docker build -t $(IMAGE) .

run:
	docker run --rm \
		--volume "$(shell pwd):$(WORKDIR)" \
		--workdir $(WORKDIR) \
		$(IMAGE) \
		./$(RUN_SCRIPT)

rebase:
	git fetch upstream
	git checkout $(BRANCH)
	git rebase upstream/$(BRANCH)