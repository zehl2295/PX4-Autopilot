
px4_add_board(
	PLATFORM nuttx
	VENDOR px4
	MODEL fmu-v5x
	LABEL recovery
	TOOLCHAIN arm-none-eabi
	ARCHITECTURE cortex-m7
	ROMFSROOT recovery
	SERIAL_PORTS
#		GPS1:/dev/ttyS0
#		TEL1:/dev/ttyS6
		TEL2:/dev/ttyS4
#		TEL3:/dev/ttyS1
#		GPS2:/dev/ttyS7
	DRIVERS
		#adc/ads1115
		adc/board_adc
		#barometer # all available barometer drivers
		#batt_smbus
		#camera_capture
		#camera_trigger
		#differential_pressure # all available differential pressure drivers
		#distance_sensor # all available distance sensor drivers
		#dshot
		#gps
		#heater
		#imu # all available imu drivers
		#imu/analog_devices/adis16448
		#imu/bosch/bmi088
		#imu/invensense/icm20602
		#imu/invensense/icm20649
		#imu/invensense/icm42688p
		#irlock
		#lights # all available light drivers
		#magnetometer # all available magnetometer drivers
		#optical_flow # all available optical flow drivers
		#osd
		#pca9685
		#pca9685_pwm_out
		#power_monitor/ina226
		#protocol_splitter
		#pwm_input
		#pwm_out_sim
		pwm_out
		#px4io
		#rc_input
		#roboclaw
		#rpm
		#safety_button
		#telemetry # all available telemetry drivers
		#test_ppm
		#tone_alarm
		#uavcan
	MODULES
		#airspeed_selector
		#attitude_estimator_q
		#3camera_feedback
		#commander
		dataman
		#ekf2
		#esc_battery
		#events
		#flight_mode_manager
		#fw_att_control
		#fw_autotune_attitude_control
		#fw_pos_control_l1
		#gyro_calibration
		#gyro_fft
		#land_detector
		#landing_target_estimator
		#load_mon
		#local_position_estimator
		#logger
		#mag_bias_estimator
		mavlink
		#mc_att_control
		#mc_autotune_attitude_control
		#mc_hover_thrust_estimator
		#mc_pos_control
		#mc_rate_control
		#micrortps_bridge
		navigator
		#rc_update
		#rover_pos_control
		#sensors
		#sih
		#temperature_compensation
		#uuv_att_control
		#uuv_pos_control
		#vmount
		#vtol_att_control
	SYSTEMCMDS
		bl_update
		dmesg
		esc_calib
		gpio
		hardfault_log
		i2cdetect
		led_control
		mft
		mixer
		motor_test
		mtd
		nshterm
		param
		perf
		pwm
		reboot
		sd_bench
		serial_test
		system_time
		tests # tests and test runner
		top
		topic_listener
		tune_control
		uorb
		usb_connected
		ver
		work_queue
	)