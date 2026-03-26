class Devrecap < Formula
  desc "Know what you actually did today, including your AI sessions"
  homepage "https://github.com/cloudprobe/devrecap"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cloudprobe/devrecap/releases/download/v0.1.0/devrecap_0.1.0_darwin_arm64.tar.gz"
      sha256 "8d521a60dd7e1051bee76c179700c0f66461e6e1e9e842d7e772e2b3b9de3f69"
    end

    on_intel do
      url "https://github.com/cloudprobe/devrecap/releases/download/v0.1.0/devrecap_0.1.0_darwin_amd64.tar.gz"
      sha256 "c4cd4b050dfdd6f41fdfb8cfb1423803cad125d883ffccb74832e1af62583f00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudprobe/devrecap/releases/download/v0.1.0/devrecap_0.1.0_linux_arm64.tar.gz"
      sha256 "3772a468fb7bd72709f4fdec1d49ba79d9116deddfffc8bf4ad959eb7549aac4"
    end

    on_intel do
      url "https://github.com/cloudprobe/devrecap/releases/download/v0.1.0/devrecap_0.1.0_linux_amd64.tar.gz"
      sha256 "0fab65b3ae9d39bd122fed46606cca6bafe86f97ecb36fd70192a3e3f5b9c329"
    end
  end

  def install
    bin.install "devrecap"
  end

  test do
    assert_match "devrecap", shell_output("#{bin}/devrecap --version")
  end
end
