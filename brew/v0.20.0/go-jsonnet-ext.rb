# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoJsonnetExt < Formula
  desc ""
  homepage ""
  version "0.20.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/marxus/go-jsonnet-ext/releases/download/v0.20.0/go-jsonnet-darwin-amd64.tar.gz"
      sha256 "fd1d32869c0cf85c9e8ba926096def24124586ad5c1bf2a879e2c3c6a4285770"

      def install
        for _bin in ["jsonnet", "jsonnetfmt", "jsonnet-lint", "jsonnet-deps"] do bin.install _bin end
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/marxus/go-jsonnet-ext/releases/download/v0.20.0/go-jsonnet-darwin-arm64.tar.gz"
      sha256 "d334de174ecbdff020ab7af0da6676568738c4f377c655eef1227f9480dc7560"

      def install
        for _bin in ["jsonnet", "jsonnetfmt", "jsonnet-lint", "jsonnet-deps"] do bin.install _bin end
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/marxus/go-jsonnet-ext/releases/download/v0.20.0/go-jsonnet-linux-arm64.tar.gz"
      sha256 "a2af044cfadbcf6731927f9bd2682bf8018f1a542b753478c9b3c4763b9695ba"

      def install
        for _bin in ["jsonnet", "jsonnetfmt", "jsonnet-lint", "jsonnet-deps"] do bin.install _bin end
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/marxus/go-jsonnet-ext/releases/download/v0.20.0/go-jsonnet-linux-amd64.tar.gz"
      sha256 "c694bf1acf47237cfbaa7300fce0aeb1d9b6eb7158e5e30fdc66447d413f7bc8"

      def install
        for _bin in ["jsonnet", "jsonnetfmt", "jsonnet-lint", "jsonnet-deps"] do bin.install _bin end
      end
    end
  end
end
