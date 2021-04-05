# typed: false
# frozen_string_literal: true

class EvergreenPrompt < Formula
  desc "Interactive CLI for Evergreen"
  homepage "https://github.com/chatton/evergreen-prompt"
  version "1.0.0"
  license "MIT"
  url "https://github.com/chatton/evergreen-prompt/releases/download/v1.0.0/evergreen-prompt-1.0.1.tar.gz"
  sha256 "e90ee3d40d57dc4c8937ce89d53f7195be50a3e1c01a29a7a0b8085a3e94ba53"
  bottle :unneeded


  def install
    bin.install "evergreen-prompt"
  end

end
