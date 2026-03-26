class Devrecap < Formula
  desc "Know what you actually did today, including your AI sessions"
  homepage "https://github.com/cloudprobe/devrecap"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cloudprobe/devrecap/releases/download/v0.1.1/devrecap_0.1.1_darwin_arm64.tar.gz"
      sha256 "aeff08ca702c4a451a33a76c820c7d4e431c18900fc0fe32efeb2d818759fc1a"
    end

    on_intel do
      url "https://github.com/cloudprobe/devrecap/releases/download/v0.1.1/devrecap_0.1.1_darwin_amd64.tar.gz"
      sha256 "1d6e66d4ef0485ba49ec22c7bdf3d5dcddac5d705f0bdfdff64afa5cdb76ce8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudprobe/devrecap/releases/download/v0.1.1/devrecap_0.1.1_linux_arm64.tar.gz"
      sha256 "8c316497b9f8e1a0a506daffa96a8a503b38d8bcb72cb38f05e6bb05978fc402"
    end

    on_intel do
      url "https://github.com/cloudprobe/devrecap/releases/download/v0.1.1/devrecap_0.1.1_linux_amd64.tar.gz"
      sha256 "92f44e896ec1fdce1146ebe122ab6f37bbdc95cc2dee39943bf235d4b31cabf4"
    end
  end

  def install
    bin.install "devrecap"
  end

  test do
    assert_match "devrecap", shell_output("#{bin}/devrecap --version")
  end
end
