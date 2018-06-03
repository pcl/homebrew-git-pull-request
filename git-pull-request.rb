class GitPullRequest < Formula
  desc "Manage GitHub pull requests from the shell"
  homepage "https://github.com/pcl/git-pull-request"
  url "https://github.com/pcl/git-pull-request/archive/v0.1.tar.gz"
  sha256 "3c1adc218fd6c971ef4822825dad882158b60ffed71e392e551d98ef46657d39"

  depends_on "python@3" => :required

  def install
    system "python3", "-mpip", "install", "-r", "requirements.txt"
    bin.install "git-pr"
  end

  test do
    system bin/"git", "pr", "help"
  end
end
