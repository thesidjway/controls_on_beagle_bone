execute_process(COMMAND "/home/debian/controls_on_beagle_bone/support_ws/build/diagnostic_updater/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/debian/controls_on_beagle_bone/support_ws/build/diagnostic_updater/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
