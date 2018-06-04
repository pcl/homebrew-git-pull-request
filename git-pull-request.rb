class GitPullRequest < Formula
  desc "Manage GitHub pull requests from the shell"
  homepage "https://github.com/pcl/git-pull-request"
  url "https://github.com/pcl/git-pull-request/archive/v0.2.tar.gz"
  sha256 "151dbae818e30d1acae6cfd6689a0ea468d3137000d829a6a4a3e6236160a29c"

  depends_on "python@3" => :required

  def install
    system "python3", "-mpip", "install", "-r", "requirements.txt"
    bin.install "git-pr"
  end

  test do
    system bin/"git", "pr", "help"
  end
end
