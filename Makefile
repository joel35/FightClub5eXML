IMAGE = xslt-processor
RUN_SCRIPT = run.sh
WORKDIR = /app

build:
	docker build -t $(IMAGE) .

run:
	docker run --rm \
		--volume "$(shell pwd):$(WORKDIR)" \
		--workdir $(WORKDIR) \
		$(IMAGE) \
		./$(RUN_SCRIPT)