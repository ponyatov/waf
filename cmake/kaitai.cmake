file(GLOB KSY
    RELATIVE ${CMAKE_SOURCE_DIR}
    src/*.ksy
)

foreach(KSY_FILE ${KSY})
    string(REGEX REPLACE ".+\/(.+)\.ksy$" "\\1"
        KSY_PATH            ${KSY_FILE})
    string(REGEX REPLACE ".+\/(.+)\.ksy$" "${CMAKE_SOURCE_DIR}/tmp/${KSY_PATH}/\\1.cpp"
        KSY_CPP             ${KSY_FILE})
        list(APPEND CP      ${KSY_CPP})
    string(REGEX REPLACE ".+\/(.+)\.ksy$" "${CMAKE_SOURCE_DIR}/tmp/${KSY_PATH}/\\1.h"
        KSY_HPP             ${KSY_FILE})
        list(APPEND HP      ${KSY_HPP})
    add_custom_command(
        OUTPUT              ${KSY_CPP} ${KSY_HPP}
        DEPENDS             ${KSY_FILE}
        WORKING_DIRECTORY   ${CMAKE_SOURCE_DIR}
        COMMAND             kaitai-struct-compiler
        ARGS                -- --verbose file -I ${CMAKE_SOURCE_DIR}/src
                            -t cpp_stl -d tmp/${KSY_PATH} ${KSY_FILE}
    )
endforeach()
