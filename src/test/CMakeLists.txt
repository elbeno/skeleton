add_executable (test_${PROJECT_NAME} main.cpp)
target_link_libraries(test_${PROJECT_NAME} ${PROJECT_NAME})
add_test (Test1 test_${PROJECT_NAME})
