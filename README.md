# GO-JSONNET Ext

### simple patching without forking the entire go-jsonnet repo

```sh
# change this to desired go-jsonnet tag
export TAG=v0.0.0

# just for reference
echo "https://github.com/google/go-jsonnet/blob/$TAG"

# test locally
goreleaser release --clean --snapshot

# push to ci
git tag -f "$TAG"
git push --tags
```

### install via homebrew

```sh
export TAG=v0.0.0
brew install "$(rb="$(mktemp -d)/go-jsonnet-ext.rb"; curl -o "$rb" "https://raw.githubusercontent.com/marxus/go-jsonnet-ext/main/brew/$TAG/go-jsonnet-ext.rb"; echo "$rb")"
```
