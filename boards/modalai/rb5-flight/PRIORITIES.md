
# Priorities

Add Spektrum support in M0052

Occasional voxlpm probe fail. Verify i2c retry fixes that.
Occasional voxlpm start causes crash. Try Mutex.

Implement CPU utilization monitor (DSP vs. Apps) (LoadMon.cpp)_

Magnetometer broken. Check ATT_W_MAG. Check CAL_MAG0_ROT. Internal? Not lined up on QGC?

Add SoftAP mode to WiFi (In px4 support for now)
- Do range testing on this

Test "signer.py failing in qrb5165-px4-support if Hexagon SDK not installed" fix (Tom to check it out)

Move to PX4 barometer driver. Need to create one for ICP101xx

Move to PX4 IMU driver. Need to create SPI driver, interrupt driver

SDSP: Timeout waiting for parameter_client_set_value_response

Add queueing to make sure there are no lost IMU / Barometer samples in the thin clients

Investigate switch to altitude mode when manual mode specified
- Something to do with the RC switches

Run with MAV_BROADCAST 0 and implement mavlink proxy
   * So we can direct the drone to a specific GCS

User and Developer Documentation

Fix pthread issues in calibration procedures:
- commander/worker_thread. Switched to commander thread (inline) as a hack
- SubscriptionBlocking causes crash due to some pthread call
- For now just run commander on apps side

qshell_retval sequence number mismatch and subsequent timeout
Is there an advertise loop if the topic is local and remote?

Search for all uses of pthread_create. Try to use px4_task_spawn_cmd instead

Search for all uses of clock_gettime. Try to use px4_clock_gettime instead

Log file management

Crash analysis tools