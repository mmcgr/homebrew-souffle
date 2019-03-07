class Souffle < Formula
  desc "Translator of declarative Datalog programs into the C++ language."
  homepage "https://github.com/souffle-lang/souffle/wiki"
  url "https://github.com/souffle-lang/souffle.git"

  depends_on "libtool" => :build
  depends_on "bison" => :build
  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libffi" => :build
  depends_on "mcpp" => :build
  depends_on "pkg-config" => :build

  def install
    system "export", "PKG_CONFIG_PATH=/usr/local/opt/libffi/lib/pkgconfig/"
    system "./bootstrap"
    system "./configure", "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "false"
  end
end
