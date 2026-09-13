cask "orchestrator" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.0-beta.2"
  sha256 arm:   "8e5f0dbb8273807de77081ba71a5af275db81f7cea721ca8d6c586b2be8a524a",
         intel: "74aeba01e7b45ca716990f873586ee70b15c1a6a064ad5b1d920de1c4eb19cff"

  url "https://github.com/zachealy1/orchestrator/releases/download/v#{version}/Orchestrator_#{arch}.dmg"
  name "Orchestrator"
  desc "Codex workspace with repository browsing, Kanban and code review"
  homepage "https://zachealy1.github.io/orchestrator/"

  livecheck do
    skip "Public beta; release updates are reviewed manually"
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Orchestrator.app"

  caveats <<~EOS
    Orchestrator is a public beta and is not notarized by Apple.
    macOS may block the first launch. Review the installation guidance:
      https://github.com/zachealy1/orchestrator#download-and-install

    A supported Codex account is required. Provider costs and limits apply.
  EOS
end
