BOOK_DIR := book
BUILD_DIR := build
METADATA := $(BOOK_DIR)/metadata.yaml
COVER    := $(BOOK_DIR)/assets/cover.png
SOURCES  := $(sort $(wildcard $(BOOK_DIR)/*.md))

PANDOC_COMMON := --from=markdown+yaml_metadata_block+smart \
                 --metadata-file=$(METADATA) \
                 --top-level-division=chapter \
                 --toc --toc-depth=2

.PHONY: all pdf epub clean

all: pdf epub

pdf: $(BUILD_DIR)/guide.pdf

epub: $(BUILD_DIR)/guide.epub

$(BUILD_DIR)/guide.pdf: $(SOURCES) $(METADATA) | $(BUILD_DIR)
	pandoc $(PANDOC_COMMON) --pdf-engine=xelatex -o $@ $(SOURCES)

$(BUILD_DIR)/guide.epub: $(SOURCES) $(METADATA) $(COVER) | $(BUILD_DIR)
	pandoc $(PANDOC_COMMON) --epub-cover-image=$(COVER) -o $@ $(SOURCES)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)
