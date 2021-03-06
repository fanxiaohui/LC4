#
# Copyright (C) 2006 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=libao
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=http://downloads.xiph.org/releases/ao/
PKG_MD5SUM:=2b2508c29bc97e4dc218fa162cf883c8

PKG_FIXUP:=libtool
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libao
  SECTION:=libs
  DEPENDS:=+alsa-lib
  CATEGORY:=Libraries
  TITLE:=A cross platform audio library
  URL:=http://www.xiph.org/ao/
endef

define Package/libao/description
	Libao is a cross-platform audio library that allows programs to
	output audio using a simple API on a wide variety of platforms.
endef

CONFIGURE_ARGS += \
	--enable-shared \
	--enable-static \
	--disable-esd \
	--disable-arts \
	--disable-nas \
	--disable-pulse

TARGET_CFLAGS += $(FPIC)

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/ao $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libao.{a,so*} $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/ao.pc $(1)/usr/lib/pkgconfig/
endef

define Package/libao/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libao.so.* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/ao/plugins-4
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/ao/plugins-4/libalsa.so $(1)/usr/lib/ao/plugins-4/
endef

$(eval $(call BuildPackage,libao))
