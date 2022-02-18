.PHONY: all clean

.PHONY: test
test: rubocop

.PHONY: rubocop
rubocop:
	@bundle exec rubocop --parallel
