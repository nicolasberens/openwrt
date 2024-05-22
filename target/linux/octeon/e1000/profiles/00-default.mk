# SPDX-License-Identifier: GPL-2.0-only

define Profile/Default
  NAME:=Default Profile
  PRIORITY:=1
endef

define Profile/Default/Description
	Default package set compatible e1000 based routers.
endef

$(eval $(call Profile,Default))
