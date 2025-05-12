# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Jar2app < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/PriateXYF/jar2app"
  url "https://codeload.github.com/PriateXYF/jar2app/tar.gz/v1.0.3"
  version "1.0.3"
  sha256 "def742039bcdc46709190dcedc7f71e12c8bd272ecc38cdffce9de76b55f2a1c"
  license ""
  head "https://github.com/PriateXYF/jar2app.git"

  # depends_on "cmake" => :build

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  depends_on "go" => :build
  
  def install
    system "go", "build", "-o", bin/"jar2app"
    prefix.install_metafiles
  end

  test do
    output = shell_output("#{bin}/jar2app -h")
    assert_match "Usage", output
  end
end

