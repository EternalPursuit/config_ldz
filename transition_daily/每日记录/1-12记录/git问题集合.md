# 1. git push ssl_error_syscall

主要是代理问题，本来git默认走的是ssh，但是下载clone的时候，走的是http，所以出问题了。

git config --global --unset http.proxy



