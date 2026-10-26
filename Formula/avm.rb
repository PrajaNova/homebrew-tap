class Avm < Formula
  desc "Any Version Manager with aliases, shims, and provider plugins"
  homepage "https://github.com/prajanova/avm"
  version "0.5.1-beta.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/prajanova/avm/releases/download/v0.5.1-beta.1/avm_darwin_arm64.tar.gz"
      sha256 "c4592fd27ba58f8ffe53bbb4c549330604f1f2e70186ef0a9fa024fd2a15b268"
    end

    on_intel do
      url "https://github.com/prajanova/avm/releases/download/v0.5.1-beta.1/avm_darwin_amd64.tar.gz"
      sha256 "7012d222701451424964bab35073e4c5d3820d63d012db55d01e23ea23f47018"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prajanova/avm/releases/download/v0.5.1-beta.1/avm_linux_arm64.tar.gz"
      sha256 "b02662bd4eec70d8a143a49ec59dd3c11d11acc28411cf58217f2a2e132e892e"
    end

    on_intel do
      url "https://github.com/prajanova/avm/releases/download/v0.5.1-beta.1/avm_linux_amd64.tar.gz"
      sha256 "b86948a2895293d2fe114cf027eb29f6625dc7097d476a414ea3184e8ec0d962"
    end
  end

  def install
    bin.install "avm-bin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/avm-bin --version")
  end
end
