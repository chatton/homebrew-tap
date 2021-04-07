# typed: false
# frozen_string_literal: true

class EvergreenPrompt < Formula
  desc "Interactive CLI for Evergreen"
  homepage "https://github.com/chatton/evergreen-prompt"
  version "1.1.1"
  license "MIT"
  url "https://github.com/chatton/evergreen-prompt/releases/download/v1.1.1/evergreen-prompt-1.1.1.tar.gz"
  sha256 "7e611eb47be15b4342f9b5969dcdc3bbdae07e668cc55e5178e0dc29408bc5c9"
  bottle :unneeded


  def install
    bin.install "evergreen-prompt"
  end

end

