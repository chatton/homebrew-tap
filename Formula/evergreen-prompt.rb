# typed: false
# frozen_string_literal: true

class EvergreenPrompt < Formula
  desc "Interactive CLI for Evergreen"
  homepage "https://github.com/chatton/evergreen-prompt"
  version "1.0.0"
  license "MIT"
  url "https://github.com/chatton/evergreen-prompt/releases/download/v1.0.0/evergreen-prompt-1.0.0.tar.gz"
  sha256 "07dd20b1534844953413100c91b023e0bec6be0fb2162c847bf6104aaac053f1"
  bottle :unneeded


  def install
    bin.install "evergreen-prompt"
  end

end
