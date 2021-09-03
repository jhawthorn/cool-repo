require "minitest/autorun"
require "fileutils"
require "rbconfig"

class MyTest < Minitest::Test
  def test_cool
    if File.exist?("/opt/hostedtoolcache")
      refute File.exist?("/opt/hostedtoolcache/hello")
      FileUtils.touch "/opt/hostedtoolcache/hello"
    end
  end

  def test_other
    p RbConfig::CONFIG
  end
end
