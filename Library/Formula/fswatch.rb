require "formula"

class Fswatch < Formula
  homepage "https://github.com/alandipert/fswatch"
  url "https://github.com/alandipert/fswatch/releases/download/1.3.3/fswatch-1.3.3.tar.gz"
  sha1 "6e1e59adc8c570b8ab1acf2c713f4f7df9f06f46"
  version "1.3.3"

  needs :cxx11

  def install
    ENV.cxx11
    system "./configure", "--prefix=#{prefix}",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules"
    system "make", "install"
  end
end
