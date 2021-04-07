# typed: false
# frozen_string_literal: true

class EvergreenPrompt < Formula
  desc "Interactive CLI for Evergreen"
  homepage "https://github.com/chatton/evergreen-prompt"
  version "1.1.0"
  license "MIT"
  url "https://github.com/chatton/evergreen-prompt/releases/download/v1.1.0/evergreen-prompt-1.1.0.tar.gz"
  sha256 "a3da967f7d2415d92c0bb60c17d7bab1395d4e193819c594b06037387e554650"
  bottle :unneeded


  def install
    bin.install "evergreen-prompt"
  end

end
