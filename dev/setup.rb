#!/usr/bin/env ruby
# frozen_string_literal: true

require "rbconfig"
require "rubygems"
require "shellwords"

$stdout.sync = true

root = File.expand_path("..", __dir__)
lockfile = File.join(root, "Gemfile.lock")
bundler_version = File.read(lockfile)[/^BUNDLED WITH\s*\n\s+(\S+)/, 1]
abort "Could not read the Bundler version from Gemfile.lock" unless bundler_version

def run!(*command)
  puts "+ #{command.shelljoin}"
  abort "Command failed: #{command.shelljoin}" unless system(*command)
end

Dir.chdir(root)
ruby = RbConfig.ruby

unless Gem::Specification.find_all_by_name("bundler", bundler_version).any?
  run!(ruby, "-S", "gem", "install", "bundler", "--version", bundler_version, "--no-document")
end

bundle = [ruby, "-S", "bundle", "_#{bundler_version}_"]
run!(*bundle, "install", "--quiet")
run!(*bundle, "exec", "jekyll", "build")

puts "Setup complete."
