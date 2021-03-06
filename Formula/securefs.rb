class Securefs < Formula
  desc "Filesystem with transparent authenticated encryption"
  homepage "https://github.com/netheril96/securefs"
  url "https://github.com/netheril96/securefs/archive/0.7.2.tar.gz"
  sha256 "bb6373dac49fbc621c478937b4255a01085bc9db3a5d1f8845e63a0468fe8cfc"
  head "https://github.com/netheril96/securefs.git"

  depends_on "cmake" => :build
  depends_on :osxfuse

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "#{bin}/securefs", "version" # The sandbox prevents a more thorough test
  end
end
