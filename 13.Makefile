.PHONY: api-%
api-%:
	@make -C src/api $*

.PHONY: front-%
front-%:
	@make -C src/front $*