<?php extract($_ENV) ?>
# provide headers in builddir, so they do not end up in /usr/include/ext/<?=$PECL?>/src

PHP_<?=strtoupper($PECL)?>_HEADERS := $(addprefix $(PHP_<?=strtoupper($PECL)?>_BUILDDIR)/,$(PHP_<?=strtoupper($PECL)?>_HEADERS))

$(PHP_<?=strtoupper($PECL)?>_BUILDDIR)/%.h: $(PHP_<?=strtoupper($PECL)?>_SRCDIR)/src/%.h
	@cat >$@ <$<

all: <?=$PECL?>-build-headers
clean: <?=$PECL?>-clean-headers

.PHONY: <?=$PECL?>-build-headers
<?=$PECL?>-build-headers: $(PHP_<?=strtoupper($PECL)?>_HEADERS)

.PHONY: <?=$PECL?>-clean-headers
<?=$PECL?>-clean-headers:
	-rm -f $(PHP_<?=strtoupper($PECL)?>_HEADERS)
