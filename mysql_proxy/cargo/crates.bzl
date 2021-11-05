"""
@generated
cargo-raze generated Bazel file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""

load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")  # buildifier: disable=load

def raze_fetch_remote_crates():
    """This function defines a collection of repos and should be called in a WORKSPACE file"""
    maybe(
        http_archive,
        name = "raze__addr2line__0_15_2",
        url = "https://crates.io/api/v1/crates/addr2line/0.15.2/download",
        type = "tar.gz",
        sha256 = "e7a2e47a1fbe209ee101dd6d61285226744c6c8d3c21c8dc878ba6cb9f467f3a",
        strip_prefix = "addr2line-0.15.2",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.addr2line-0.15.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__adler__1_0_2",
        url = "https://crates.io/api/v1/crates/adler/1.0.2/download",
        type = "tar.gz",
        sha256 = "f26201604c87b1e01bd3d98f8d5d9a8fcbb815e8cedb41ffccbeb4bf593a35fe",
        strip_prefix = "adler-1.0.2",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.adler-1.0.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__aho_corasick__0_6_10",
        url = "https://crates.io/api/v1/crates/aho-corasick/0.6.10/download",
        type = "tar.gz",
        sha256 = "81ce3d38065e618af2d7b77e10c5ad9a069859b4be3c2250f674af3840d9c8a5",
        strip_prefix = "aho-corasick-0.6.10",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.aho-corasick-0.6.10.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__aho_corasick__0_7_18",
        url = "https://crates.io/api/v1/crates/aho-corasick/0.7.18/download",
        type = "tar.gz",
        sha256 = "1e37cfd5e7657ada45f742d6e99ca5788580b5c529dc78faf11ece6dc702656f",
        strip_prefix = "aho-corasick-0.7.18",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.aho-corasick-0.7.18.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ansi_term__0_11_0",
        url = "https://crates.io/api/v1/crates/ansi_term/0.11.0/download",
        type = "tar.gz",
        sha256 = "ee49baf6cb617b853aa8d93bf420db2383fab46d314482ca2803b40d5fde979b",
        strip_prefix = "ansi_term-0.11.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.ansi_term-0.11.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__arrayvec__0_4_12",
        url = "https://crates.io/api/v1/crates/arrayvec/0.4.12/download",
        type = "tar.gz",
        sha256 = "cd9fd44efafa8690358b7408d253adf110036b88f55672a933f01d616ad9b1b9",
        strip_prefix = "arrayvec-0.4.12",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.arrayvec-0.4.12.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__arrayvec__0_5_2",
        url = "https://crates.io/api/v1/crates/arrayvec/0.5.2/download",
        type = "tar.gz",
        sha256 = "23b62fc65de8e4e7f52534fb52b0f3ed04746ae267519eef2a83941e8085068b",
        strip_prefix = "arrayvec-0.5.2",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.arrayvec-0.5.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__atty__0_2_14",
        url = "https://crates.io/api/v1/crates/atty/0.2.14/download",
        type = "tar.gz",
        sha256 = "d9b39be18770d11421cdb1b9947a45dd3f37e93092cbf377614828a319d5fee8",
        strip_prefix = "atty-0.2.14",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.atty-0.2.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__autocfg__1_0_1",
        url = "https://crates.io/api/v1/crates/autocfg/1.0.1/download",
        type = "tar.gz",
        sha256 = "cdb031dd78e28731d87d56cc8ffef4a8f36ca26c38fe2de700543e627f8a464a",
        strip_prefix = "autocfg-1.0.1",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.autocfg-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__backtrace__0_3_60",
        url = "https://crates.io/api/v1/crates/backtrace/0.3.60/download",
        type = "tar.gz",
        sha256 = "b7815ea54e4d821e791162e078acbebfd6d8c8939cd559c9335dceb1c8ca7282",
        strip_prefix = "backtrace-0.3.60",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.backtrace-0.3.60.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__base64__0_11_0",
        url = "https://crates.io/api/v1/crates/base64/0.11.0/download",
        type = "tar.gz",
        sha256 = "b41b7ea54a0c9d92199de89e20e58d49f02f8e699814ef3fdf266f6f748d15c7",
        strip_prefix = "base64-0.11.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.base64-0.11.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bigdecimal__0_1_2",
        url = "https://crates.io/api/v1/crates/bigdecimal/0.1.2/download",
        type = "tar.gz",
        sha256 = "1374191e2dd25f9ae02e3aa95041ed5d747fc77b3c102b49fe2dd9a8117a6244",
        strip_prefix = "bigdecimal-0.1.2",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.bigdecimal-0.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bindgen__0_32_3",
        url = "https://crates.io/api/v1/crates/bindgen/0.32.3/download",
        type = "tar.gz",
        sha256 = "8b242e11a8f446f5fc7b76b37e81d737cabca562a927bd33766dac55b5f1177f",
        strip_prefix = "bindgen-0.32.3",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.bindgen-0.32.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bitflags__1_2_1",
        url = "https://crates.io/api/v1/crates/bitflags/1.2.1/download",
        type = "tar.gz",
        sha256 = "cf1de2fe8c75bc145a2f577add951f8134889b4795d47466a54a5c846d691693",
        strip_prefix = "bitflags-1.2.1",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.bitflags-1.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__block_buffer__0_7_3",
        url = "https://crates.io/api/v1/crates/block-buffer/0.7.3/download",
        type = "tar.gz",
        sha256 = "c0940dc441f31689269e10ac70eb1002a3a1d3ad1390e030043662eb7fe4688b",
        strip_prefix = "block-buffer-0.7.3",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.block-buffer-0.7.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__block_padding__0_1_5",
        url = "https://crates.io/api/v1/crates/block-padding/0.1.5/download",
        type = "tar.gz",
        sha256 = "fa79dedbb091f449f1f39e53edf88d5dbe95f895dae6135a8d7b881fb5af73f5",
        strip_prefix = "block-padding-0.1.5",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.block-padding-0.1.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__byte_tools__0_3_1",
        url = "https://crates.io/api/v1/crates/byte-tools/0.3.1/download",
        type = "tar.gz",
        sha256 = "e3b5ca7a04898ad4bcd41c90c5285445ff5b791899bb1b0abdd2a2aa791211d7",
        strip_prefix = "byte-tools-0.3.1",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.byte-tools-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__byteorder__1_4_3",
        url = "https://crates.io/api/v1/crates/byteorder/1.4.3/download",
        type = "tar.gz",
        sha256 = "14c189c53d098945499cdfa7ecc63567cf3886b3332b312a5b4585d8d3a6a610",
        strip_prefix = "byteorder-1.4.3",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.byteorder-1.4.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bytes__0_4_12",
        url = "https://crates.io/api/v1/crates/bytes/0.4.12/download",
        type = "tar.gz",
        sha256 = "206fdffcfa2df7cbe15601ef46c813fce0965eb3286db6b56c583b814b51c81c",
        strip_prefix = "bytes-0.4.12",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.bytes-0.4.12.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cc__1_0_69",
        url = "https://crates.io/api/v1/crates/cc/1.0.69/download",
        type = "tar.gz",
        sha256 = "e70cc2f62c6ce1868963827bd677764c62d07c3d9a3e1fb1177ee1a9ab199eb2",
        strip_prefix = "cc-1.0.69",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.cc-1.0.69.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cexpr__0_2_3",
        url = "https://crates.io/api/v1/crates/cexpr/0.2.3/download",
        type = "tar.gz",
        sha256 = "42aac45e9567d97474a834efdee3081b3c942b2205be932092f53354ce503d6c",
        strip_prefix = "cexpr-0.2.3",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.cexpr-0.2.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cfg_if__0_1_10",
        url = "https://crates.io/api/v1/crates/cfg-if/0.1.10/download",
        type = "tar.gz",
        sha256 = "4785bdd1c96b2a846b2bd7cc02e86b6b3dbf14e7e53446c4f54c92a361040822",
        strip_prefix = "cfg-if-0.1.10",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.cfg-if-0.1.10.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cfg_if__1_0_0",
        url = "https://crates.io/api/v1/crates/cfg-if/1.0.0/download",
        type = "tar.gz",
        sha256 = "baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd",
        strip_prefix = "cfg-if-1.0.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.cfg-if-1.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__chrono__0_4_19",
        url = "https://crates.io/api/v1/crates/chrono/0.4.19/download",
        type = "tar.gz",
        sha256 = "670ad68c9088c2a963aaa298cb369688cf3f9465ce5e2d4ca10e6e0098a1ce73",
        strip_prefix = "chrono-0.4.19",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.chrono-0.4.19.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__clang_sys__0_21_2",
        url = "https://crates.io/api/v1/crates/clang-sys/0.21.2/download",
        type = "tar.gz",
        sha256 = "e414af9726e1d11660801e73ccc7fb81803fb5f49e5903a25b348b2b3b480d2e",
        strip_prefix = "clang-sys-0.21.2",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.clang-sys-0.21.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__clap__2_33_3",
        url = "https://crates.io/api/v1/crates/clap/2.33.3/download",
        type = "tar.gz",
        sha256 = "37e58ac78573c40708d45522f0d80fa2f01cc4f9b4e2bf749807255454312002",
        strip_prefix = "clap-2.33.3",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.clap-2.33.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__crc32fast__1_2_1",
        url = "https://crates.io/api/v1/crates/crc32fast/1.2.1/download",
        type = "tar.gz",
        sha256 = "81156fece84ab6a9f2afdb109ce3ae577e42b1228441eded99bd77f627953b1a",
        strip_prefix = "crc32fast-1.2.1",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.crc32fast-1.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ctrlc__3_2_0",
        url = "https://crates.io/api/v1/crates/ctrlc/3.2.0/download",
        type = "tar.gz",
        strip_prefix = "ctrlc-3.2.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.ctrlc-3.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__digest__0_8_1",
        url = "https://crates.io/api/v1/crates/digest/0.8.1/download",
        type = "tar.gz",
        sha256 = "f3d0c8c8752312f9713efd397ff63acb9f85585afbf179282e720e7704954dd5",
        strip_prefix = "digest-0.8.1",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.digest-0.8.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__dirs_next__2_0_0",
        url = "https://crates.io/api/v1/crates/dirs-next/2.0.0/download",
        type = "tar.gz",
        strip_prefix = "dirs-next-2.0.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.dirs-next-2.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__dirs_sys_next__0_1_2",
        url = "https://crates.io/api/v1/crates/dirs-sys-next/0.1.2/download",
        type = "tar.gz",
        strip_prefix = "dirs-sys-next-0.1.2",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.dirs-sys-next-0.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__env_logger__0_4_3",
        url = "https://crates.io/api/v1/crates/env_logger/0.4.3/download",
        type = "tar.gz",
        sha256 = "3ddf21e73e016298f5cb37d6ef8e8da8e39f91f9ec8b0df44b7deb16a9f8cd5b",
        strip_prefix = "env_logger-0.4.3",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.env_logger-0.4.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__failure__0_1_8",
        url = "https://crates.io/api/v1/crates/failure/0.1.8/download",
        type = "tar.gz",
        sha256 = "d32e9bd16cc02eae7db7ef620b392808b89f6a5e16bb3497d159c6b92a0f4f86",
        strip_prefix = "failure-0.1.8",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.failure-0.1.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__failure_derive__0_1_8",
        url = "https://crates.io/api/v1/crates/failure_derive/0.1.8/download",
        type = "tar.gz",
        sha256 = "aa4da3c766cd7a0db8242e326e9e4e081edd567072893ed320008189715366a4",
        strip_prefix = "failure_derive-0.1.8",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.failure_derive-0.1.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__fake_simd__0_1_2",
        url = "https://crates.io/api/v1/crates/fake-simd/0.1.2/download",
        type = "tar.gz",
        sha256 = "e88a8acf291dafb59c2d96e8f59828f3838bb1a70398823ade51a84de6a6deed",
        strip_prefix = "fake-simd-0.1.2",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.fake-simd-0.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__flate2__1_0_20",
        url = "https://crates.io/api/v1/crates/flate2/1.0.20/download",
        type = "tar.gz",
        sha256 = "cd3aec53de10fe96d7d8c565eb17f2c687bb5518a2ec453b5b1252964526abe0",
        strip_prefix = "flate2-1.0.20",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.flate2-1.0.20.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__generic_array__0_12_4",
        url = "https://crates.io/api/v1/crates/generic-array/0.12.4/download",
        type = "tar.gz",
        sha256 = "ffdf9f34f1447443d37393cc6c2b8313aebddcd96906caf34e54c68d8e57d7bd",
        strip_prefix = "generic-array-0.12.4",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.generic-array-0.12.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__getrandom__0_1_16",
        url = "https://crates.io/api/v1/crates/getrandom/0.1.16/download",
        type = "tar.gz",
        sha256 = "8fc3cb4d91f53b50155bdcfd23f6a4c39ae1969c2ae85982b135750cccaf5fce",
        strip_prefix = "getrandom-0.1.16",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.getrandom-0.1.16.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__getrandom__0_2_3",
        url = "https://crates.io/api/v1/crates/getrandom/0.2.3/download",
        type = "tar.gz",
        strip_prefix = "getrandom-0.2.3",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.getrandom-0.2.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__gimli__0_24_0",
        url = "https://crates.io/api/v1/crates/gimli/0.24.0/download",
        type = "tar.gz",
        sha256 = "0e4075386626662786ddb0ec9081e7c7eeb1ba31951f447ca780ef9f5d568189",
        strip_prefix = "gimli-0.24.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.gimli-0.24.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__glob__0_2_11",
        url = "https://crates.io/api/v1/crates/glob/0.2.11/download",
        type = "tar.gz",
        sha256 = "8be18de09a56b60ed0edf84bc9df007e30040691af7acd1c41874faac5895bfb",
        strip_prefix = "glob-0.2.11",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.glob-0.2.11.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hermit_abi__0_1_19",
        url = "https://crates.io/api/v1/crates/hermit-abi/0.1.19/download",
        type = "tar.gz",
        sha256 = "62b467343b94ba476dcb2500d242dadbb39557df889310ac77c5d99100aaac33",
        strip_prefix = "hermit-abi-0.1.19",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.hermit-abi-0.1.19.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__iovec__0_1_4",
        url = "https://crates.io/api/v1/crates/iovec/0.1.4/download",
        type = "tar.gz",
        sha256 = "b2b3ea6ff95e175473f8ffe6a7eb7c00d054240321b84c57051175fe3c1e075e",
        strip_prefix = "iovec-0.1.4",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.iovec-0.1.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__itoa__0_4_7",
        url = "https://crates.io/api/v1/crates/itoa/0.4.7/download",
        type = "tar.gz",
        sha256 = "dd25036021b0de88a0aff6b850051563c6516d0bf53f8638938edbb9de732736",
        strip_prefix = "itoa-0.4.7",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.itoa-0.4.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__kernel32_sys__0_2_2",
        url = "https://crates.io/api/v1/crates/kernel32-sys/0.2.2/download",
        type = "tar.gz",
        sha256 = "7507624b29483431c0ba2d82aece8ca6cdba9382bff4ddd0f7490560c056098d",
        strip_prefix = "kernel32-sys-0.2.2",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.kernel32-sys-0.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__lazy_static__1_4_0",
        url = "https://crates.io/api/v1/crates/lazy_static/1.4.0/download",
        type = "tar.gz",
        sha256 = "e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646",
        strip_prefix = "lazy_static-1.4.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.lazy_static-1.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__lexical__4_2_1",
        url = "https://crates.io/api/v1/crates/lexical/4.2.1/download",
        type = "tar.gz",
        sha256 = "b33373fcaba01f90be959f0a1028098d388663c187bbf373d990c12e747788bd",
        strip_prefix = "lexical-4.2.1",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.lexical-4.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__lexical_core__0_6_8",
        url = "https://crates.io/api/v1/crates/lexical-core/0.6.8/download",
        type = "tar.gz",
        sha256 = "233853dfa6b87c7c00eb46a205802069263ab27e16b6bdd1b08ddf91a855e30c",
        strip_prefix = "lexical-core-0.6.8",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.lexical-core-0.6.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__lexical_core__0_7_6",
        url = "https://crates.io/api/v1/crates/lexical-core/0.7.6/download",
        type = "tar.gz",
        sha256 = "6607c62aa161d23d17a9072cc5da0be67cdfc89d3afb1e8d9c842bebc2525ffe",
        strip_prefix = "lexical-core-0.7.6",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.lexical-core-0.7.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__libc__0_2_102",
        url = "https://crates.io/api/v1/crates/libc/0.2.102/download",
        type = "tar.gz",
        strip_prefix = "libc-0.2.102",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.libc-0.2.102.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__libloading__0_4_3",
        url = "https://crates.io/api/v1/crates/libloading/0.4.3/download",
        type = "tar.gz",
        sha256 = "fd38073de8f7965d0c17d30546d4bb6da311ab428d1c7a3fc71dff7f9d4979b9",
        strip_prefix = "libloading-0.4.3",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.libloading-0.4.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__libz_sys__1_1_3",
        url = "https://crates.io/api/v1/crates/libz-sys/1.1.3/download",
        type = "tar.gz",
        sha256 = "de5435b8549c16d423ed0c03dbaafe57cf6c3344744f1242520d59c9d8ecec66",
        strip_prefix = "libz-sys-1.1.3",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.libz-sys-1.1.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__log__0_3_9",
        url = "https://crates.io/api/v1/crates/log/0.3.9/download",
        type = "tar.gz",
        sha256 = "e19e8d5c34a3e0e2223db8e060f9e8264aeeb5c5fc64a4ee9965c062211c024b",
        strip_prefix = "log-0.3.9",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.log-0.3.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__log__0_4_14",
        url = "https://crates.io/api/v1/crates/log/0.4.14/download",
        type = "tar.gz",
        sha256 = "51b9bbe6c47d51fc3e1a9b945965946b4c44142ab8792c50835a980d362c2710",
        strip_prefix = "log-0.4.14",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.log-0.4.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__memchr__1_0_2",
        url = "https://crates.io/api/v1/crates/memchr/1.0.2/download",
        type = "tar.gz",
        sha256 = "148fab2e51b4f1cfc66da2a7c32981d1d3c083a803978268bb11fe4b86925e7a",
        strip_prefix = "memchr-1.0.2",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.memchr-1.0.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__memchr__2_4_0",
        url = "https://crates.io/api/v1/crates/memchr/2.4.0/download",
        type = "tar.gz",
        sha256 = "b16bd47d9e329435e309c58469fe0791c2d0d1ba96ec0954152a5ae2b04387dc",
        strip_prefix = "memchr-2.4.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.memchr-2.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__memoffset__0_6_4",
        url = "https://crates.io/api/v1/crates/memoffset/0.6.4/download",
        type = "tar.gz",
        strip_prefix = "memoffset-0.6.4",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.memoffset-0.6.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__miniz_oxide__0_4_4",
        url = "https://crates.io/api/v1/crates/miniz_oxide/0.4.4/download",
        type = "tar.gz",
        sha256 = "a92518e98c078586bc6c934028adcca4c92a53d6a958196de835170a01d84e4b",
        strip_prefix = "miniz_oxide-0.4.4",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.miniz_oxide-0.4.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__msql_srv__0_8_8",
        url = "https://crates.io/api/v1/crates/msql-srv/0.8.8/download",
        type = "tar.gz",
        sha256 = "da0a22d437fda41a6b455387c81b125582b4ddd109d3e22b30655acb3372e887",
        strip_prefix = "msql-srv-0.8.8",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.msql-srv-0.8.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__mysql_common__0_19_2",
        url = "https://crates.io/api/v1/crates/mysql_common/0.19.2/download",
        type = "tar.gz",
        sha256 = "b7f3fa60743383c5e5719b68a134531074e83e550b97182e4a24ad5220a8e974",
        strip_prefix = "mysql_common-0.19.2",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.mysql_common-0.19.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__nix__0_22_1",
        url = "https://crates.io/api/v1/crates/nix/0.22.1/download",
        type = "tar.gz",
        strip_prefix = "nix-0.22.1",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.nix-0.22.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__nodrop__0_1_14",
        url = "https://crates.io/api/v1/crates/nodrop/0.1.14/download",
        type = "tar.gz",
        sha256 = "72ef4a56884ca558e5ddb05a1d1e7e1bfd9a68d9ed024c21704cc98872dae1bb",
        strip_prefix = "nodrop-0.1.14",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.nodrop-0.1.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__nom__3_2_1",
        url = "https://crates.io/api/v1/crates/nom/3.2.1/download",
        type = "tar.gz",
        sha256 = "05aec50c70fd288702bcd93284a8444607f3292dbdf2a30de5ea5dcdbe72287b",
        strip_prefix = "nom-3.2.1",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.nom-3.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__nom__5_1_2",
        url = "https://crates.io/api/v1/crates/nom/5.1.2/download",
        type = "tar.gz",
        sha256 = "ffb4262d26ed83a1c0a33a38fe2bb15797329c85770da05e6b828ddb782627af",
        strip_prefix = "nom-5.1.2",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.nom-5.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__num_bigint__0_2_6",
        url = "https://crates.io/api/v1/crates/num-bigint/0.2.6/download",
        type = "tar.gz",
        sha256 = "090c7f9998ee0ff65aa5b723e4009f7b217707f1fb5ea551329cc4d6231fb304",
        strip_prefix = "num-bigint-0.2.6",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.num-bigint-0.2.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__num_integer__0_1_44",
        url = "https://crates.io/api/v1/crates/num-integer/0.1.44/download",
        type = "tar.gz",
        sha256 = "d2cc698a63b549a70bc047073d2949cce27cd1c7b0a4a862d08a8031bc2801db",
        strip_prefix = "num-integer-0.1.44",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.num-integer-0.1.44.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__num_traits__0_2_14",
        url = "https://crates.io/api/v1/crates/num-traits/0.2.14/download",
        type = "tar.gz",
        sha256 = "9a64b1ec5cda2586e284722486d802acf1f7dbdc623e2bfc57e65ca1cd099290",
        strip_prefix = "num-traits-0.2.14",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.num-traits-0.2.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__num_cpus__1_13_0",
        url = "https://crates.io/api/v1/crates/num_cpus/1.13.0/download",
        type = "tar.gz",
        strip_prefix = "num_cpus-1.13.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.num_cpus-1.13.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__object__0_25_3",
        url = "https://crates.io/api/v1/crates/object/0.25.3/download",
        type = "tar.gz",
        sha256 = "a38f2be3697a57b4060074ff41b44c16870d916ad7877c17696e063257482bc7",
        strip_prefix = "object-0.25.3",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.object-0.25.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__once_cell__1_8_0",
        url = "https://crates.io/api/v1/crates/once_cell/1.8.0/download",
        type = "tar.gz",
        strip_prefix = "once_cell-1.8.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.once_cell-1.8.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__opaque_debug__0_2_3",
        url = "https://crates.io/api/v1/crates/opaque-debug/0.2.3/download",
        type = "tar.gz",
        sha256 = "2839e79665f131bdb5782e51f2c6c9599c133c6098982a54c794358bf432529c",
        strip_prefix = "opaque-debug-0.2.3",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.opaque-debug-0.2.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__peeking_take_while__0_1_2",
        url = "https://crates.io/api/v1/crates/peeking_take_while/0.1.2/download",
        type = "tar.gz",
        sha256 = "19b17cddbe7ec3f8bc800887bab5e717348c95ea2ca0b1bf0837fb964dc67099",
        strip_prefix = "peeking_take_while-0.1.2",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.peeking_take_while-0.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__pkg_config__0_3_19",
        url = "https://crates.io/api/v1/crates/pkg-config/0.3.19/download",
        type = "tar.gz",
        sha256 = "3831453b3449ceb48b6d9c7ad7c96d5ea673e9b470a1dc578c2ce6521230884c",
        strip_prefix = "pkg-config-0.3.19",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.pkg-config-0.3.19.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ppv_lite86__0_2_10",
        url = "https://crates.io/api/v1/crates/ppv-lite86/0.2.10/download",
        type = "tar.gz",
        sha256 = "ac74c624d6b2d21f425f752262f42188365d7b8ff1aff74c82e45136510a4857",
        strip_prefix = "ppv-lite86-0.2.10",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.ppv-lite86-0.2.10.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro_hack__0_5_19",
        url = "https://crates.io/api/v1/crates/proc-macro-hack/0.5.19/download",
        type = "tar.gz",
        sha256 = "dbf0c48bc1d91375ae5c3cd81e3722dff1abcf81a30960240640d223f59fe0e5",
        strip_prefix = "proc-macro-hack-0.5.19",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.proc-macro-hack-0.5.19.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro2__0_2_3",
        url = "https://crates.io/api/v1/crates/proc-macro2/0.2.3/download",
        type = "tar.gz",
        sha256 = "cd07deb3c6d1d9ff827999c7f9b04cdfd66b1b17ae508e14fe47b620f2282ae0",
        strip_prefix = "proc-macro2-0.2.3",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.proc-macro2-0.2.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro2__1_0_27",
        url = "https://crates.io/api/v1/crates/proc-macro2/1.0.27/download",
        type = "tar.gz",
        sha256 = "f0d8caf72986c1a598726adc988bb5984792ef84f5ee5aa50209145ee8077038",
        strip_prefix = "proc-macro2-1.0.27",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.proc-macro2-1.0.27.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__quote__0_4_2",
        url = "https://crates.io/api/v1/crates/quote/0.4.2/download",
        type = "tar.gz",
        sha256 = "1eca14c727ad12702eb4b6bfb5a232287dcf8385cb8ca83a3eeaf6519c44c408",
        strip_prefix = "quote-0.4.2",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.quote-0.4.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__quote__1_0_9",
        url = "https://crates.io/api/v1/crates/quote/1.0.9/download",
        type = "tar.gz",
        sha256 = "c3d0b9745dc2debf507c8422de05d7226cc1f0644216dfdfead988f9b1ab32a7",
        strip_prefix = "quote-1.0.9",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.quote-1.0.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand__0_7_3",
        url = "https://crates.io/api/v1/crates/rand/0.7.3/download",
        type = "tar.gz",
        sha256 = "6a6b1679d49b24bbfe0c803429aa1874472f50d9b363131f0e89fc356b544d03",
        strip_prefix = "rand-0.7.3",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.rand-0.7.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_chacha__0_2_2",
        url = "https://crates.io/api/v1/crates/rand_chacha/0.2.2/download",
        type = "tar.gz",
        sha256 = "f4c8ed856279c9737206bf725bf36935d8666ead7aa69b52be55af369d193402",
        strip_prefix = "rand_chacha-0.2.2",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.rand_chacha-0.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_core__0_5_1",
        url = "https://crates.io/api/v1/crates/rand_core/0.5.1/download",
        type = "tar.gz",
        sha256 = "90bde5296fc891b0cef12a6d03ddccc162ce7b2aff54160af9338f8d40df6d19",
        strip_prefix = "rand_core-0.5.1",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.rand_core-0.5.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_hc__0_2_0",
        url = "https://crates.io/api/v1/crates/rand_hc/0.2.0/download",
        type = "tar.gz",
        sha256 = "ca3129af7b92a17112d59ad498c6f81eaf463253766b90396d39ea7a39d6613c",
        strip_prefix = "rand_hc-0.2.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.rand_hc-0.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__redox_syscall__0_2_10",
        url = "https://crates.io/api/v1/crates/redox_syscall/0.2.10/download",
        type = "tar.gz",
        strip_prefix = "redox_syscall-0.2.10",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.redox_syscall-0.2.10.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__redox_users__0_4_0",
        url = "https://crates.io/api/v1/crates/redox_users/0.4.0/download",
        type = "tar.gz",
        strip_prefix = "redox_users-0.4.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.redox_users-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__regex__0_2_11",
        url = "https://crates.io/api/v1/crates/regex/0.2.11/download",
        type = "tar.gz",
        sha256 = "9329abc99e39129fcceabd24cf5d85b4671ef7c29c50e972bc5afe32438ec384",
        strip_prefix = "regex-0.2.11",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.regex-0.2.11.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__regex__1_5_4",
        url = "https://crates.io/api/v1/crates/regex/1.5.4/download",
        type = "tar.gz",
        sha256 = "d07a8629359eb56f1e2fb1652bb04212c072a87ba68546a04065d525673ac461",
        strip_prefix = "regex-1.5.4",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.regex-1.5.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__regex_syntax__0_5_6",
        url = "https://crates.io/api/v1/crates/regex-syntax/0.5.6/download",
        type = "tar.gz",
        sha256 = "7d707a4fa2637f2dca2ef9fd02225ec7661fe01a53623c1e6515b6916511f7a7",
        strip_prefix = "regex-syntax-0.5.6",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.regex-syntax-0.5.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__regex_syntax__0_6_25",
        url = "https://crates.io/api/v1/crates/regex-syntax/0.6.25/download",
        type = "tar.gz",
        sha256 = "f497285884f3fcff424ffc933e56d7cbca511def0c9831a7f9b5f6153e3cc89b",
        strip_prefix = "regex-syntax-0.6.25",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.regex-syntax-0.6.25.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rust_decimal__1_14_3",
        url = "https://crates.io/api/v1/crates/rust_decimal/1.14.3/download",
        type = "tar.gz",
        sha256 = "01127cb8617e5e21bcf2e19b5eb48317735ca677f1d0a94833c21c331c446582",
        strip_prefix = "rust_decimal-1.14.3",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.rust_decimal-1.14.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rustc_demangle__0_1_20",
        url = "https://crates.io/api/v1/crates/rustc-demangle/0.1.20/download",
        type = "tar.gz",
        sha256 = "dead70b0b5e03e9c814bcb6b01e03e68f7c57a80aa48c72ec92152ab3e818d49",
        strip_prefix = "rustc-demangle-0.1.20",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.rustc-demangle-0.1.20.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rustc_version__0_2_3",
        url = "https://crates.io/api/v1/crates/rustc_version/0.2.3/download",
        type = "tar.gz",
        sha256 = "138e3e0acb6c9fb258b19b67cb8abd63c00679d2851805ea151465464fe9030a",
        strip_prefix = "rustc_version-0.2.3",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.rustc_version-0.2.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rustversion__1_0_5",
        url = "https://crates.io/api/v1/crates/rustversion/1.0.5/download",
        type = "tar.gz",
        sha256 = "61b3909d758bb75c79f23d4736fac9433868679d3ad2ea7a61e3c25cfda9a088",
        strip_prefix = "rustversion-1.0.5",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.rustversion-1.0.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ryu__1_0_5",
        url = "https://crates.io/api/v1/crates/ryu/1.0.5/download",
        type = "tar.gz",
        sha256 = "71d301d4193d031abdd79ff7e3dd721168a9572ef3fe51a1517aba235bd8f86e",
        strip_prefix = "ryu-1.0.5",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.ryu-1.0.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__semver__0_9_0",
        url = "https://crates.io/api/v1/crates/semver/0.9.0/download",
        type = "tar.gz",
        sha256 = "1d7eb9ef2c18661902cc47e535f9bc51b78acd254da71d375c2f6720d9a40403",
        strip_prefix = "semver-0.9.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.semver-0.9.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__semver_parser__0_7_0",
        url = "https://crates.io/api/v1/crates/semver-parser/0.7.0/download",
        type = "tar.gz",
        sha256 = "388a1df253eca08550bef6c72392cfe7c30914bf41df5269b68cbd6ff8f570a3",
        strip_prefix = "semver-parser-0.7.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.semver-parser-0.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde__1_0_126",
        url = "https://crates.io/api/v1/crates/serde/1.0.126/download",
        type = "tar.gz",
        sha256 = "ec7505abeacaec74ae4778d9d9328fe5a5d04253220a85c4ee022239fc996d03",
        strip_prefix = "serde-1.0.126",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.serde-1.0.126.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_json__1_0_64",
        url = "https://crates.io/api/v1/crates/serde_json/1.0.64/download",
        type = "tar.gz",
        sha256 = "799e97dc9fdae36a5c8b8f2cae9ce2ee9fdce2058c57a93e6099d919fd982f79",
        strip_prefix = "serde_json-1.0.64",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.serde_json-1.0.64.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__sha1__0_6_0",
        url = "https://crates.io/api/v1/crates/sha1/0.6.0/download",
        type = "tar.gz",
        sha256 = "2579985fda508104f7587689507983eadd6a6e84dd35d6d115361f530916fa0d",
        strip_prefix = "sha1-0.6.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.sha1-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__sha2__0_8_2",
        url = "https://crates.io/api/v1/crates/sha2/0.8.2/download",
        type = "tar.gz",
        sha256 = "a256f46ea78a0c0d9ff00077504903ac881a1dafdc20da66545699e7776b3e69",
        strip_prefix = "sha2-0.8.2",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.sha2-0.8.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__slog__2_7_0",
        url = "https://crates.io/api/v1/crates/slog/2.7.0/download",
        type = "tar.gz",
        strip_prefix = "slog-2.7.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.slog-2.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__slog_term__2_8_0",
        url = "https://crates.io/api/v1/crates/slog-term/2.8.0/download",
        type = "tar.gz",
        strip_prefix = "slog-term-2.8.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.slog-term-2.8.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__standback__0_2_17",
        url = "https://crates.io/api/v1/crates/standback/0.2.17/download",
        type = "tar.gz",
        sha256 = "e113fb6f3de07a243d434a56ec6f186dfd51cb08448239fe7bcae73f87ff28ff",
        strip_prefix = "standback-0.2.17",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.standback-0.2.17.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__static_assertions__0_3_4",
        url = "https://crates.io/api/v1/crates/static_assertions/0.3.4/download",
        type = "tar.gz",
        sha256 = "7f3eb36b47e512f8f1c9e3d10c2c1965bc992bd9cdb024fa581e2194501c83d3",
        strip_prefix = "static_assertions-0.3.4",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.static_assertions-0.3.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__static_assertions__1_1_0",
        url = "https://crates.io/api/v1/crates/static_assertions/1.1.0/download",
        type = "tar.gz",
        sha256 = "a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f",
        strip_prefix = "static_assertions-1.1.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.static_assertions-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__strsim__0_8_0",
        url = "https://crates.io/api/v1/crates/strsim/0.8.0/download",
        type = "tar.gz",
        sha256 = "8ea5119cdb4c55b55d432abb513a0429384878c15dde60cc77b1c99de1a95a6a",
        strip_prefix = "strsim-0.8.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.strsim-0.8.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__syn__1_0_73",
        url = "https://crates.io/api/v1/crates/syn/1.0.73/download",
        type = "tar.gz",
        sha256 = "f71489ff30030d2ae598524f61326b902466f72a0fb1a8564c001cc63425bcc7",
        strip_prefix = "syn-1.0.73",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.syn-1.0.73.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__synstructure__0_12_5",
        url = "https://crates.io/api/v1/crates/synstructure/0.12.5/download",
        type = "tar.gz",
        sha256 = "474aaa926faa1603c40b7885a9eaea29b444d1cb2850cb7c0e37bb1a4182f4fa",
        strip_prefix = "synstructure-0.12.5",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.synstructure-0.12.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__term__0_7_0",
        url = "https://crates.io/api/v1/crates/term/0.7.0/download",
        type = "tar.gz",
        strip_prefix = "term-0.7.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.term-0.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__textwrap__0_11_0",
        url = "https://crates.io/api/v1/crates/textwrap/0.11.0/download",
        type = "tar.gz",
        sha256 = "d326610f408c7a4eb6f51c37c330e496b08506c9457c9d34287ecc38809fb060",
        strip_prefix = "textwrap-0.11.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.textwrap-0.11.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__thread_local__0_3_6",
        url = "https://crates.io/api/v1/crates/thread_local/0.3.6/download",
        type = "tar.gz",
        sha256 = "c6b53e329000edc2b34dbe8545fd20e55a333362d0a321909685a19bd28c3f1b",
        strip_prefix = "thread_local-0.3.6",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.thread_local-0.3.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__thread_local__1_1_3",
        url = "https://crates.io/api/v1/crates/thread_local/1.1.3/download",
        type = "tar.gz",
        strip_prefix = "thread_local-1.1.3",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.thread_local-1.1.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__threadpool__1_8_1",
        url = "https://crates.io/api/v1/crates/threadpool/1.8.1/download",
        type = "tar.gz",
        strip_prefix = "threadpool-1.8.1",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.threadpool-1.8.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__time__0_1_44",
        url = "https://crates.io/api/v1/crates/time/0.1.44/download",
        type = "tar.gz",
        sha256 = "6db9e6914ab8b1ae1c260a4ae7a49b6c5611b40328a735b21862567685e73255",
        strip_prefix = "time-0.1.44",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.time-0.1.44.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__time__0_2_7",
        url = "https://crates.io/api/v1/crates/time/0.2.7/download",
        type = "tar.gz",
        sha256 = "3043ac959c44dccc548a57417876c8fe241502aed69d880efc91166c02717a93",
        strip_prefix = "time-0.2.7",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.time-0.2.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__time_macros__0_1_1",
        url = "https://crates.io/api/v1/crates/time-macros/0.1.1/download",
        type = "tar.gz",
        sha256 = "957e9c6e26f12cb6d0dd7fc776bb67a706312e7299aed74c8dd5b17ebb27e2f1",
        strip_prefix = "time-macros-0.1.1",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.time-macros-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__time_macros_impl__0_1_2",
        url = "https://crates.io/api/v1/crates/time-macros-impl/0.1.2/download",
        type = "tar.gz",
        sha256 = "fd3c141a1b43194f3f56a1411225df8646c55781d5f26db825b3d98507eb482f",
        strip_prefix = "time-macros-impl-0.1.2",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.time-macros-impl-0.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__twox_hash__1_6_0",
        url = "https://crates.io/api/v1/crates/twox-hash/1.6.0/download",
        type = "tar.gz",
        sha256 = "04f8ab788026715fa63b31960869617cba39117e520eb415b0139543e325ab59",
        strip_prefix = "twox-hash-1.6.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.twox-hash-1.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__typenum__1_13_0",
        url = "https://crates.io/api/v1/crates/typenum/1.13.0/download",
        type = "tar.gz",
        sha256 = "879f6906492a7cd215bfa4cf595b600146ccfac0c79bcbd1f3000162af5e8b06",
        strip_prefix = "typenum-1.13.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.typenum-1.13.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ucd_util__0_1_8",
        url = "https://crates.io/api/v1/crates/ucd-util/0.1.8/download",
        type = "tar.gz",
        sha256 = "c85f514e095d348c279b1e5cd76795082cf15bd59b93207832abe0b1d8fed236",
        strip_prefix = "ucd-util-0.1.8",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.ucd-util-0.1.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_width__0_1_8",
        url = "https://crates.io/api/v1/crates/unicode-width/0.1.8/download",
        type = "tar.gz",
        sha256 = "9337591893a19b88d8d87f2cec1e73fad5cdfd10e5a6f349f498ad6ea2ffb1e3",
        strip_prefix = "unicode-width-0.1.8",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.unicode-width-0.1.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_xid__0_1_0",
        url = "https://crates.io/api/v1/crates/unicode-xid/0.1.0/download",
        type = "tar.gz",
        sha256 = "fc72304796d0818e357ead4e000d19c9c174ab23dc11093ac919054d20a6a7fc",
        strip_prefix = "unicode-xid-0.1.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.unicode-xid-0.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_xid__0_2_2",
        url = "https://crates.io/api/v1/crates/unicode-xid/0.2.2/download",
        type = "tar.gz",
        sha256 = "8ccb82d61f80a663efe1f787a51b16b5a51e3314d6ac365b08639f52387b33f3",
        strip_prefix = "unicode-xid-0.2.2",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.unicode-xid-0.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__utf8_ranges__1_0_4",
        url = "https://crates.io/api/v1/crates/utf8-ranges/1.0.4/download",
        type = "tar.gz",
        sha256 = "b4ae116fef2b7fea257ed6440d3cfcff7f190865f170cdad00bb6465bf18ecba",
        strip_prefix = "utf8-ranges-1.0.4",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.utf8-ranges-1.0.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__uuid__0_8_2",
        url = "https://crates.io/api/v1/crates/uuid/0.8.2/download",
        type = "tar.gz",
        sha256 = "bc5cf98d8186244414c848017f0e2676b3fcb46807f6668a97dfe67359a3c4b7",
        strip_prefix = "uuid-0.8.2",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.uuid-0.8.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__vcpkg__0_2_15",
        url = "https://crates.io/api/v1/crates/vcpkg/0.2.15/download",
        type = "tar.gz",
        sha256 = "accd4ea62f7bb7a82fe23066fb0957d48ef677f6eeb8215f372f52e48bb32426",
        strip_prefix = "vcpkg-0.2.15",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.vcpkg-0.2.15.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__vec_map__0_8_2",
        url = "https://crates.io/api/v1/crates/vec_map/0.8.2/download",
        type = "tar.gz",
        sha256 = "f1bddf1187be692e79c5ffeab891132dfb0f236ed36a43c7ed39f1165ee20191",
        strip_prefix = "vec_map-0.8.2",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.vec_map-0.8.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__version_check__0_9_3",
        url = "https://crates.io/api/v1/crates/version_check/0.9.3/download",
        type = "tar.gz",
        sha256 = "5fecdca9a5291cc2b8dcf7dc02453fee791a280f3743cb0905f8822ae463b3fe",
        strip_prefix = "version_check-0.9.3",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.version_check-0.9.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasi__0_10_0_wasi_snapshot_preview1",
        url = "https://crates.io/api/v1/crates/wasi/0.10.0+wasi-snapshot-preview1/download",
        type = "tar.gz",
        sha256 = "1a143597ca7c7793eff794def352d41792a93c481eb1042423ff7ff72ba2c31f",
        strip_prefix = "wasi-0.10.0+wasi-snapshot-preview1",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.wasi-0.10.0+wasi-snapshot-preview1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasi__0_9_0_wasi_snapshot_preview1",
        url = "https://crates.io/api/v1/crates/wasi/0.9.0+wasi-snapshot-preview1/download",
        type = "tar.gz",
        sha256 = "cccddf32554fecc6acb585f82a32a72e28b48f8c4c1883ddfeeeaa96f7d8e519",
        strip_prefix = "wasi-0.9.0+wasi-snapshot-preview1",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.wasi-0.9.0+wasi-snapshot-preview1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__which__1_0_5",
        url = "https://crates.io/api/v1/crates/which/1.0.5/download",
        type = "tar.gz",
        sha256 = "e84a603e7e0b1ce1aa1ee2b109c7be00155ce52df5081590d1ffb93f4f515cb2",
        strip_prefix = "which-1.0.5",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.which-1.0.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi__0_2_8",
        url = "https://crates.io/api/v1/crates/winapi/0.2.8/download",
        type = "tar.gz",
        sha256 = "167dc9d6949a9b857f3451275e911c3f44255842c1f7a76f33c55103a909087a",
        strip_prefix = "winapi-0.2.8",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.winapi-0.2.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi__0_3_9",
        url = "https://crates.io/api/v1/crates/winapi/0.3.9/download",
        type = "tar.gz",
        sha256 = "5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419",
        strip_prefix = "winapi-0.3.9",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.winapi-0.3.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_build__0_1_1",
        url = "https://crates.io/api/v1/crates/winapi-build/0.1.1/download",
        type = "tar.gz",
        sha256 = "2d315eee3b34aca4797b2da6b13ed88266e6d612562a0c46390af8299fc699bc",
        strip_prefix = "winapi-build-0.1.1",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.winapi-build-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_i686_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-i686-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        sha256 = "ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6",
        strip_prefix = "winapi-i686-pc-windows-gnu-0.4.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.winapi-i686-pc-windows-gnu-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_x86_64_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-x86_64-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        sha256 = "712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f",
        strip_prefix = "winapi-x86_64-pc-windows-gnu-0.4.0",
        build_file = Label("//mysql_proxy/cargo/remote:BUILD.winapi-x86_64-pc-windows-gnu-0.4.0.bazel"),
    )
