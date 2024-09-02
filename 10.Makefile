.PHONY: file-%
file-1 file-2: file-%:
	@echo "parte dinamica '$*'"
	@echo "comando completo '$@'"