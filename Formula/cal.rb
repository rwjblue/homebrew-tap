class Cal < Formula
  desc "Simple command line calendar, written in Rust"
  homepage "https://github.com/rwjblue/cal-rs"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rwjblue/cal-rs/releases/download/v0.2.0/cal-aarch64-apple-darwin.tar.gz"
      sha256 "e4938512f88e96f7e6ca2ca2f3286b22e8441aeff8af5b8178c636d529ac5fee"
    else
      url "https://github.com/rwjblue/cal-rs/releases/download/v0.2.0/cal-x86_64-apple-darwin.tar.gz"
      sha256 "9d3de779c9e70cfae0f95ce6d7958234b6e3d9ccf30514e798aaec4323cc47d4"
    end
  end
  on_linux do
    url "https://github.com/rwjblue/cal-rs/releases/download/v0.2.0/cal-x86_64-unknown-linux-musl.tar.gz"
    sha256 "0ac8087583588eff2241fb8717e38fa945780951a486283e1b5d25cfb4321abf"
  end

  def install
    bin.install "cal"
  end

  test do
    system "#{bin}/cal", "--version"
  end
end
