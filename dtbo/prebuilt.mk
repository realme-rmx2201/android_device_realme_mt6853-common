# The stock DTBO is an input, not an output of the Android kernel build.
$(BOARD_PREBUILT_DTBOIMAGE):
	@echo "Using MediaTek-signed stock DTBO: $@"
