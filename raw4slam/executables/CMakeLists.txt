add_executable(acquire_data acquire_data.cpp)
target_link_libraries(acquire_data PRIVATE raspcam_take_photo cxx_setup)
