require 'spec_helper'

describe 'clowns site' do
  it 'responds on port 8000' do
    expect(port 8000).to be_listening 'tcp'
  end

  it 'returns clowns in the HTML body' do
    expect((command 'curl localhost:8000').stdout).to match(/clowns/)
  end
end
