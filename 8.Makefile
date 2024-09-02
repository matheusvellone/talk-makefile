# Remover .env

.env: .env.example
	@cp .env.example .env

command-1:
	@cat .env

command-2: .env
	@cat .env