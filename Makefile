###############################################################################
#
# Makefile for beamer-translator-chinese
# Copyright (C) 2013 Haixing Hu, 
# Department of Computer Science and Technology, Nanjing University.
#
###############################################################################
TEXMF_LOCAL=$(shell get_texmf_dir.sh)
BEAMER_TRANSLATOR_PATH=tex/latex/beamer/translator
DEST_DIR=$(TEXMF_LOCAL)/$(BEAMER_TRANSLATOR_PATH)

BASIC_DIR=dict/translator-basic-dictionary
ENVIRONMENT_DIR=dict/translator-environment-dictionary
NUMBERS_DIR=dict/translator-numbers-dictionary
BIBLIOGRAPHY_DIR=dict/translator-bibliography-dictionary
MONTHS_DIR=dict/translator-months-dictionary
THEOREM_DIR=dict/translator-theorem-dictionary

MAPPING_FILE=translator-language-mappings.tex
BASIC_FILES=$(BASIC_DIR)/*.dict
ENVIRONMENT_FILES=$(ENVIRONMENT_DIR)/*.dict
NUMBERS_FILES=$(NUMBERS_DIR)/*.dict
BIBLIOGRAPHY_FILES=$(BIBLIOGRAPHY_DIR)/*.dict
MONTHS_FILES=$(MONTHS_DIR)/*.dict
THEOREM_FILES=$(THEOREM_DIR)/*.dict

.PHONY: install

all: install

install: $(MAPPING_FILE) $(BASIC_FILES) $(ENVIRONMENT_FILES) $(NUMBERS_FILES) $(BIBLIOGRAPHY_FILES) $(MONTHS_FILES) $(THEOREM_FILES)
	mkdir -p $(DEST_DIR)
	cp -vf $(MAPPING_FILE) $(DEST_DIR)
	mkdir -p $(DEST_DIR)/$(BASIC_DIR)
	cp -vf $(BASIC_FILES) $(DEST_DIR)/$(BASIC_DIR)
	mkdir -p $(DEST_DIR)/$(ENVIRONMENT_DIR)
	cp -vf $(ENVIRONMENT_FILES) $(DEST_DIR)/$(ENVIRONMENT_DIR)
	mkdir -p $(DEST_DIR)/$(NUMBERS_DIR)
	cp -vf $(NUMBERS_FILES) $(DEST_DIR)/$(NUMBERS_DIR)
	mkdir -p $(DEST_DIR)/$(BIBLIOGRAPHY_DIR)
	cp -vf $(BIBLIOGRAPHY_FILES) $(DEST_DIR)/$(BIBLIOGRAPHY_DIR)
	mkdir -p $(DEST_DIR)/$(MONTHS_DIR)
	cp -vf $(MONTHS_FILES) $(DEST_DIR)/$(MONTHS_DIR)
	mkdir -p $(DEST_DIR)/$(THEOREM_DIR)
	cp -vf $(THEOREM_FILES) $(DEST_DIR)/$(THEOREM_DIR)
	texhash
