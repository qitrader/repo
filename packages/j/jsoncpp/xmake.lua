package("jsoncpp")
    set_homepage("https://github.com/qitrader/jsoncpp")
    set_description("A json library for CPP.")

    set_urls("https://github.com/qitrader/jsoncpp.git")

    on_install("linux", function (package)
        import("package.tools.xmake").install(package)
        os.cp("include/*", package:installdir("include", "jsoncpp"))
    end)
    
