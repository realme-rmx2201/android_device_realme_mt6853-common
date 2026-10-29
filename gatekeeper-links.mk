# GateKeeper legacy HAL module selection, matching the stock layout.
GATEKEEPER_SYMLINKS := $(TARGET_OUT_VENDOR)
$(GATEKEEPER_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $@/lib/hw $@/lib64/hw
	@ln -sf libSoftGatekeeper.so $@/lib/hw/gatekeeper.default.so
	@ln -sf libSoftGatekeeper.so $@/lib64/hw/gatekeeper.default.so
	@ln -sf libMcGatekeeper.so $@/lib/hw/gatekeeper.mt6853.so
	@ln -sf libMcGatekeeper.so $@/lib64/hw/gatekeeper.mt6853.so
	@ln -sf libMcGatekeeper.so $@/lib/hw/gatekeeper.oppo6853.so
	@ln -sf libMcGatekeeper.so $@/lib64/hw/gatekeeper.oppo6853.so

