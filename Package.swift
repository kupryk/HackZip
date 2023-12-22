// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// MARK: - Package definition

var package = Package(
    name: "HackZip",
    products: [
        .library(name: "HackZip", targets: ["HackZip"]),
    ],
    targets: [
        .target(
            name: "HackZip",
            path: "Sources/HackZip",
            exclude: [
                "libzip/android",
                "libzip/cmake",
                "libzip/cmake-compat",
                "libzip/examples",
                "libzip/man",
                "libzip/regress",
                "libzip/src",
                "libzip/vstudio",
                "libzip/API-CHANGES.md",
                "libzip/AUTHORS",
                "libzip/INSTALL.md",
                "libzip/LICENSE",
                "libzip/NEWS.md",
                "libzip/README.md",
                "libzip/THANKS",
                "libzip/TODO.md",
                "libzip/CMakeLists.txt",
                "libzip/appveyor.yml",
                "libzip/cmake-config.h.in",
                "libzip/cmake-zipconf.h.in",
                "libzip/libzip-config.cmake.in",
                "libzip/libzip.pc.in",
                "libzip-patches",
                "libzip/developer-xcode/extract-version.sh",
                "libzip/developer-xcode/mkconfig-h.sh",
                "libzip/developer-xcode/README Xcode Project.md",
                "libzip/developer-xcode/Info.plist",
                "libzip/lib/CMakeLists.txt",
                "libzip/lib/make_zip_err_str.sh",
                "libzip/lib/make_zipconf.sh",
                "libzip/lib/zip_algorithm_xz.c",
                "libzip/lib/zip_algorithm_zstd.c",
                "libzip/lib/zip_crypto_gnutls.c",
                "libzip/lib/zip_crypto_mbedtls.c",
                "libzip/lib/zip_random_uwp.c",
                "libzip/lib/zip_crypto_openssl.c",
                "libzip/lib/zip_crypto_win.c",
                "libzip/lib/zip_source_file_win32_ansi.c",
                "libzip/lib/zip_source_file_win32_named.c",
                "libzip/lib/zip_source_file_win32_utf8.c",
                "libzip/lib/zip_source_file_win32_utf16.c",
                "libzip/lib/zip_source_file_win32.c",
            ],
            sources: [
                "libzip/lib",
                "libzip/developer-xcode/zip_err_str.c",
            ],
            publicHeadersPath: "include",
            cSettings: [
                .define("HAVE_CONFIG_H"),
                .headerSearchPath("libzip/lib"),
                .headerSearchPath("include-private"),
                .headerSearchPath("include-private/darwin", .when(platforms: [.macOS, .iOS, .tvOS, .watchOS])),
            ],
            linkerSettings: [
                .linkedLibrary("z"),
                .linkedLibrary("bz2"),
            ]
        ),
    ]
)
