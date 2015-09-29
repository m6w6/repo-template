<?php extract($_ENV); ?>
# <?=$REPO?>


[![Build Status](https://travis-ci.org/m6w6/<?=$REPO?>.svg?branch=master)](https://travis-ci.org/m6w6/<?=$REPO?>)

## Documentation

<?php if (isset($PECL)) : ?>
See the [online markdown reference](https://mdref.m6w6.name/<?=$PECL=?>).

Known issues are listed in [BUGS](./BUGS) and future ideas can be found in [TODO](./TODO).
<?php endif; ?>

## Installing
<?php if (isset($COMPOSER)) : ?>

### Composer

	composer require m6w6/<?=$REPO?>


## ChangeLog

A comprehensive list of changes can be obtained from the
[releases overview](./releases).
<?php endif; ?>
<?php if (isset($PECL)) : ?>

### PECL

	pecl install <?=$PECL?>


### PHARext

Watch out for [PECL replicates](https://replicator.pharext.org?<?=$PECL?>)
and pharext packages attached to [releases](./releases).

### Checkout

	git clone github.com:m6w6/<?=$REPO?>

	cd <?=$REPO?>

	/path/to/phpize
	./configure --with-php-config=/path/to/php-config
	make
	sudo make install

## ChangeLog

A comprehensive list of changes can be obtained from the
[PECL website](https://pecl.php.net/package-changelog.php?package=<?=$PECL?>).
<?php endif; ?>
<?php if (isset($AUTOTOOLS)) : ?>

### Release

	tar xf <?=$REPO?>-*.t*
	cd <?=$REPO?>-*.t*
	./configure
	make
	sudo make install

### Checkout

	git clone github.com:m6w6/<?=$REPO?>

	cd <?=$REPO?>

	autoreconf -is
	./configure
	make
	sudo make install

## ChangeLog

Check out the latest [releases](./releases) or the bundled
[ChangeLog](./ChangeLog) for a comprehensive list of changes.
<?php endif; ?>

## License

<?=$REPO?> is licensed under the 2-Clause-BSD license, which can be found in
the accompanying [LICENSE](./LICENSE) file.

## Contributing

All forms of contribution are welcome! Please see the bundled
[CONTRIBUTING](./CONTRIBUTING.md) note for the general principles followed.

The list of past and current contributors is maintained in [THANKS](./THANKS).
