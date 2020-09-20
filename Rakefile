
require_relative './runner.rb'

desc 'Update'
task :update do
  DubaiHackathon::update
  commit_docs
  push_commits
end

def commit_docs
  system "git add docs"