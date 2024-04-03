# frozen_string_literal: true

require "spec_helper"

RSpec.describe "dotfiles" do
  it "is valid" do
    File.exist?(".vimrc")
    File.exist?(".config/fish/config.fish")
  end
end
