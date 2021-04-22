bump_build
bump_sync Cargo.toml 's/version = "[0-9.-]\+"/version = "'$(cat .release-version)'"/'
