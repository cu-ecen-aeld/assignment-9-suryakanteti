##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

# Assignment 7 commit number
LDD_VERSION = ca25a58d56120e16d9ca78b53e280b40e053af42

# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-suryakanteti.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

define LDD_INSTALL_TARGET_CMDS

	# Scull	
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin/
	
	# Faulty
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin/
	
endef

LDD_MODULE_SUBDIRS = scull
LDD_MODULE_SUBDIRS += misc-modules

$(eval $(kernel-module))
$(eval $(generic-package))
