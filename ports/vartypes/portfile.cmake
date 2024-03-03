vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO lordhippo/vartypes
    REF 3024878757ebf66112a7ee3e7b02f9be39aa8b93
    SHA512 e769c0f3dab5332eaa7fca0119c920b52538668f236a01e05ea32e3556101cd4ec189dae8426d78b5e6dde821009a6ce917f58cdcc122afb8cb450b5021dd45c
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
    OPTIONS
        -DBUILD_EXAMPLE=OFF)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "vartypes")

# file(REMOVE_RECURSE
#     "${CURRENT_PACKAGES_DIR}/debug"
#     "${CURRENT_PACKAGES_DIR}/lib"
# )

file(INSTALL "${SOURCE_PATH}/COPYING" DESTINATION "${CURRENT_PACKAGES_DIR}/share/vartypes" RENAME copyright)
