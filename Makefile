.PHONY: all cln sync sync_cr br br_cr up pub_get_all

all: cln sync br

help: ## This help dialog.
	@IFS=$$'\n' ; \
	help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//'`); \
	for help_line in $${help_lines[@]}; do \
		IFS=$$'#' ; \
		help_split=($$help_line) ; \
		help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		printf "%-30s %s\n" $$help_command $$help_info ; \
	done

cln: ## Cleans the environment
	@echo "╠ Cleaning the project..."
	@melos cln

sync: ## Syncs the files for changes
	@echo "╠ Syncing the project..."
	@melos sync

sync_cr: ## Syncs the files for changes
	@echo "╠ Syncing the project..."
	@melos sync_cr

br: ## Build the files for changes
	@echo "╠ Building the project..."
	@melos swagger
	@melos protoc
	@melos br

br_cr: ## Build the files for changes (choose & run)
	@echo "╠ Building the project..."
	@melos br_cr

up: ## Upgrades the files for changes
	@echo "╠ Upgrading the project..."
	@melos up

up_cr: ## Upgrades the files for changes
	@echo "╠ Upgrading the project..."
	@melos up_cr

#####################################################################################################################

#PUBSPEC_YAML = $(shell find . -name pubspec.yaml)
#PUBSPEC_LOCK = $(PUBSPEC_YAML:.yaml=.lock)
#
#pub_get: $(PUBSPEC_LOCK)
#
#%pubspec.lock: %pubspec.yaml
#	@cd $(@D) && \
#	flutter pub get

pub_get_all:
	@find . -name pubspec.yaml -exec echo "### Getting packages for {}" \; \
	-execdir flutter pub get \;

# Runs `flutter pub run build_runner build` in all the project packages.
#generate_sources_all:
#	@find . -name pubspec.yaml -exec echo "### Generating sources for {}" \; \
#	-execdir flutter pub run build_runner build --delete-conflicting-outputs \;
#
## Runs `flutter clean` in all the project packages.
#clean_all:
#	@find . -name pubspec.yaml -exec echo "### Cleaning {}" \; \
#	-execdir flutter clean \;
#
#.PHONY: pub_get pub_get_all generate_sources_all clean_all