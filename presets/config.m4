<?php extract($_ENV) ?>
PHP_ARG_ENABLE(<?=$PECL?>, whether to enable <?=$PECL?> support,
[  --enable-<?=$PECL?>         Enable <?=$PECL?> support])

if test "$PHP_<?=strtoupper($PECL)?>" != "no"; then
	PHP_<?=strtoupper($PECL)?>_SRCDIR=PHP_EXT_SRCDIR(<?=$PECL?>)
	PHP_<?=strtoupper($PECL)?>_BUILDDIR=PHP_EXT_BUILDDIR(<?=$PECL?>)

	PHP_ADD_INCLUDE($PHP_<?=strtoupper($PECL)?>_SRCDIR/src)
	PHP_ADD_BUILD_DIR($PHP_<?=strtoupper($PECL)?>_BUILDDIR/src)

	PHP_<?=strtoupper($PECL)?>_HEADERS=`(cd $PHP_<?=strtoupper($PECL)?>_SRCDIR/src && echo *.h)`
	PHP_<?=strtoupper($PECL)?>_SOURCES=`(cd $PHP_<?=strtoupper($PECL)?>_SRCDIR && echo src/*.c)`

	PHP_NEW_EXTENSION(<?=$PECL?>, $PHP_<?=strtoupper($PECL)?>_SOURCES, $ext_shared)
	PHP_INSTALL_HEADERS(ext/<?=$PECL?>, php_<?=$PECL?>.h $PHP_<?=strtoupper($PECL)?>_HEADERS)

	PHP_SUBST(PHP_<?=strtoupper($PECL)?>_HEADERS)
	PHP_SUBST(PHP_<?=strtoupper($PECL)?>_SOURCES)

	PHP_SUBST(PHP_<?=strtoupper($PECL)?>_SRCDIR)
	PHP_SUBST(PHP_<?=strtoupper($PECL)?>_BUILDDIR)

	PHP_ADD_MAKEFILE_FRAGMENT
fi
