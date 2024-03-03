vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO jpfeltracco/vartypes
    REF 5853b6df05f801e8f2b9684b57731d056b383b86
    SHA512 f88ff9642454be0b88903174ec998cc0a5549adc1a41dbcbb6503eb8cb7632326da9141e678243efcc9cff5416631f196121f31c5931a0470178986cfb0502c4
    HEAD_REF master
)

string(COMPARE EQUAL "${VCPKG_LIBRARY_LINKAGE}" "static" BUILD_STATIC)

vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
    OPTIONS
        -DVARTYPES_BUILD_STATIC=${BUILD_STATIC})

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "vartypes")

# file(REMOVE_RECURSE
#     "${CURRENT_PACKAGES_DIR}/debug"
#     "${CURRENT_PACKAGES_DIR}/lib"
# )

file(INSTALL "${SOURCE_PATH}/COPYING" DESTINATION "${CURRENT_PACKAGES_DIR}/share/vartypes" RENAME copyright)
