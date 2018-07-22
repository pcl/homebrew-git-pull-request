class GitPullRequest < Formula
  desc "Manage GitHub pull requests from the shell"
  homepage "https://github.com/pcl/git-pull-request"
  url "https://github.com/pcl/git-pull-request/archive/v0.3.tar.gz"
  sha256 "c97cd5e7969bf7b10e1903a6e176f64d9b3bd57f38ef6d8d1e19eb296aea90b8"

  depends_on "python@3" => :required

  def install
    system "python3", "-mpip", "install", "-r", "requirements.txt"
    bin.install "git-pr"
  end

  test do
    system bin/"git", "pr", "help"
  end
end
