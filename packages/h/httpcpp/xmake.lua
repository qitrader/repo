package("httpcpp")
    set_homepage("https://github.com/qitrader/httpcpp")
    set_description("A http library for CPP.")

    set_urls("https://github.com/qitrader/httpcpp.git")

    on_install("linux", function (package)
        import("package.tools.xmake").install(package)
        os.cp("include/*", package:installdir("include", "httpcpp"))
    end)
