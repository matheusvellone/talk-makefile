DOCKER := docker

.PHONY: show-all
show-all:
	@echo "comando = $(DOCKER)"
	@$(DOCKER) ps -a