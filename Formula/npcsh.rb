class Npcsh < Formula
  desc "The composable multi-agent shell"
  homepage "https://github.com/NPC-Worldwide/npcsh"
  version "1.2.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NPC-Worldwide/npcsh/releases/download/v1.2.9/npcsh-macos-aarch64"
      sha256 "bb2111b54c15add2e756d3e4468494e552557929b60f7646c321de9078c4b229"
    else
      url "https://github.com/NPC-Worldwide/npcsh/releases/download/v1.2.9/npcsh-macos-x86_64"
      sha256 "45f9afa2c9e60f24b3c2a1a4dafd4a0d9ad3ba9afd9f1fa58f523a4b4b953fb7"
    end
  end

  on_linux do
    url "https://github.com/NPC-Worldwide/npcsh/releases/download/v1.2.9/npcsh-linux-x86_64"
    sha256 "b987eb88ee580fb8275c1273c7afe307278420778df5c44903bd5270d990ba87"
  end

  def install
    bin.install Dir["npcsh-*"].first || Dir["npcsh"].first => "npcsh"
  end

  test do
    system "true"
  end
end
