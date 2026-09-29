class Avm < Formula
  desc "Any Version Manager with aliases, shims, and provider plugins"
  homepage "https://github.com/prajanova/avm"
  version "0.4.0-beta-3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/prajanova/avm/releases/download/v0.4.0-beta-3/avm_darwin_arm64.tar.gz"
      sha256 "c3292a7e92a6813e58afef7dd01ab499930ab74f964079734f9802197f693954"
    end

    on_intel do
      url "https://github.com/prajanova/avm/releases/download/v0.4.0-beta-3/avm_darwin_amd64.tar.gz"
      sha256 "ee6b2e97daa48bb84fe10cf07591eaa3e8ee3ba73eb65e5d85a6e78095a37b88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prajanova/avm/releases/download/v0.4.0-beta-3/avm_linux_arm64.tar.gz"
      sha256 "ff3dcd482a1f4623a7b21901ece2a9fc9136b8530d1dad0c89ebd15762afe057"
    end

    on_intel do
      url "https://github.com/prajanova/avm/releases/download/v0.4.0-beta-3/avm_linux_amd64.tar.gz"
      sha256 "28090c0bfc087485f2fa21341209051baf682dfd63081df547d5b72acbbdb538"
    end
  end

  def install
    bin.install "avm-bin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/avm-bin --version")
  end
end
