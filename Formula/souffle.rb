class Souffle < Formula
  desc "Translator of declarative Datalog programs into the C++ language."
  homepage "https://github.com/souffle-lang/souffle/wiki"
  stable do
    url "https://github.com/souffle-lang/souffle/archive/1.5.1.tar.gz"
    sha256 "d620b7f5f67604a0bbfeb7a1f6721c18e5b5b23698758aab2a1a8520aecc6f0b"
  end
  devel do
    url ""
    sha256 ""
  end
  head "https://github.com/souffle-lang/souffle.git"

  depends_on "libtool" => :build
  depends_on "bison" => :build
  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libffi" => :build
  depends_on "mcpp"
  depends_on "pkg-config" => :build

  def install
    if build.head
      system "./bootstrap"
    end

    system "./configure", "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "false"
  end
end
