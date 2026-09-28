class Avm < Formula
  desc "Any Version Manager with aliases, shims, and provider plugins"
  homepage "https://github.com/prajanova/avm"
  version "0.4.0-beta-2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/prajanova/avm/releases/download/v0.4.0-beta-2/avm_darwin_arm64.tar.gz"
      sha256 "411b7f402b6e5fc8ffda814f2a335b3ac619e0f122a3d8fee2a68db47087d34a"
    end

    on_intel do
      url "https://github.com/prajanova/avm/releases/download/v0.4.0-beta-2/avm_darwin_amd64.tar.gz"
      sha256 "49b58cbae8d90fb51d2ff38b1754a47d2772afbc72fb90e51a0ed22f9c4802ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prajanova/avm/releases/download/v0.4.0-beta-2/avm_linux_arm64.tar.gz"
      sha256 "536ef39295be79e01021a12ee45aad2439d843d13b6652cfffd5610b3d8d2c28"
    end

    on_intel do
      url "https://github.com/prajanova/avm/releases/download/v0.4.0-beta-2/avm_linux_amd64.tar.gz"
      sha256 "0bfbc182f11f6bb8391e406d4a0a2e3696141153f07a22d638adcd92b1f29342"
    end
  end

  def install
    bin.install "avm-bin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/avm-bin --version")
  end
end
