cmake_policy (SET CMP0037 OLD)
add_executable (test_${PROJECT_NAME} main.cpp)
target_link_libraries(test_${PROJECT_NAME} ${PROJECT_NAME})
add_test (test test_${PROJECT_NAME})
