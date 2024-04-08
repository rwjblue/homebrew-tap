class Cal < Formula
  desc "Simple command line calendar, written in Rust"
  homepage "https://github.com/rwjblue/cal-rs"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rwjblue/cal-rs/releases/download/v0.1.0/cal-aarch64-apple-darwin.tar.gz"
      sha256 "60b625b5f2c77e45a897a4434eb79dc22c4614c7631b2c22f8f497ba59998868"
    else
      url "https://github.com/rwjblue/cal-rs/releases/download/v0.1.0/cal-x86_64-apple-darwin.tar.gz"
      sha256 "934a0a8aaef26847d84ad30ded206b8063a0585f754dde46982de84ba7ee81ac"
    end
  end
  on_linux do
    url "https://github.com/rwjblue/cal-rs/releases/download/v0.1.0/cal-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fa70c1d402bf6b8c5e67cbdb840382fe8eceb7d961fe2679efc73cc1599e5726"
  end

  def install
    bin.install "cal"
  end

  test do
    system "#{bin}/cal", "--version"
  end
end
