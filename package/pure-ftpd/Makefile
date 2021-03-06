#
# Copyright (C) 2007 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=pure-ftpd
PKG_VERSION:=1.0.21
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=http://download.pureftpd.org/pub/pure-ftpd/releases/
PKG_MD5SUM:=ca8a8dbec0cd9c8ea92fc4c37ea9c410

include $(INCLUDE_DIR)/package.mk

define Package/pure-ftpd
  SUBMENU:=FTP
  SECTION:=net
  CATEGORY:=Network
  DEPENDS:=+libelf
  TITLE:=Secure FTP made easy!
  URL:=http://www.pureftpd.org/project/pure-ftpd
endef

define Package/pure-ftpd/description
 Pure-FTPd is a free (BSD), secure, production-quality and standard-conformant
 FTP server. It doesn't provide useless bells and whistles, but focuses on
 efficiency and ease of use.
 It provides simple answers to common needs, plus unique  useful features for
 personal users as well as hosting providers.
endef

CONFIGURE_ARGS += \
	--with-everything \
	--sysconfdir=/tmp \

define Package/pure-ftpd/install
	$(INSTALL_DIR) $(1)/etc/config $(1)/etc/init.d $(1)/usr/sbin
	$(INSTALL_DATA) ./files/$(PKG_NAME).config $(1)/etc/config/$(PKG_NAME)
	$(INSTALL_BIN) ./files/$(PKG_NAME).init $(1)/etc/init.d/$(PKG_NAME)
	# $(INSTALL_BIN) $(PKG_BUILD_DIR)/src/ptracetest $(1)/usr/sbin
	# $(INSTALL_BIN) $(foreach i,ftpd pw ftpwho mrtginfo pwconvert quotacheck statsdecode uploadscript authd, \
	#	$(PKG_BUILD_DIR)/src/pure-$(i)) $(1)/usr/sbin
	#
	$(INSTALL_BIN) $(foreach i,ftpd pw , \
		$(PKG_BUILD_DIR)/src/pure-$(i)) $(1)/usr/sbin
endef

$(eval $(call BuildPackage,pure-ftpd))
