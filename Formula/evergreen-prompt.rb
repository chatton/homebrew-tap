# typed: false
# frozen_string_literal: true

class EvergreenPrompt < Formula
  desc "Interactive CLI for Evergreen"
  homepage "https://github.com/chatton/evergreen-prompt"
  version "1.2.0"
  license "MIT"
  url "https://github.com/chatton/evergreen-prompt/releases/download/v1.2.0/evergreen-prompt-1.2.0.tar.gz"
  sha256 "1604fdc89287ba5f252e93fa5595653b75962904e492bf4abe0f4f8c52f0cc28"
  bottle :unneeded


  def install
    bin.install "evergreen-prompt"
  end

end


