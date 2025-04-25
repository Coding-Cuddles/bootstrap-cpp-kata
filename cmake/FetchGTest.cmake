include(FetchContent)

function(fetch_gtest)
    find_package(GTest QUIET)

    if(NOT GTest_FOUND)
        message(STATUS "GTest not found locally. Downloading from GitHub...")

        FetchContent_Declare(
            googletest GIT_REPOSITORY https://github.com/google/googletest.git GIT_TAG v1.16.0
        )

        # Prevent overriding parent project's compiler/linker settings on Windows
        set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
        FetchContent_MakeAvailable(googletest)
    endif()
endfunction()
