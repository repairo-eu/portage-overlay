# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PHP_EXT_NAME="decimal"
PHP_EXT_INI="yes"
PHP_EXT_ZENDEXT="no"

USE_PHP="php7-0 php7-1 php7-2 php7-3 php7-4"

inherit php-ext-source-r3

DESCRIPTION="Correctly-rounded, arbitrary precision decimal floating-point arithmetic in PHP 7"
HOMEPAGE="https://php-decimal.io/"
SRC_URI="https://github.com/php-decimal/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
PHP_EXT_ECONF_ARGS=()

DEPEND="dev-libs/mpdecimal"
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	eapply_user
	php-ext-source-r3_src_prepare
}
