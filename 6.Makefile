.env:
	@echo "Creating .env file"
	@echo "DB_HOST=localhost" > .env

.PHONY: src
src:
	@echo "Running src command"