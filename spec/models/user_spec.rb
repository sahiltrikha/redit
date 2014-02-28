require "spec_helper"

describe User do 
  it { should have_many(:stories) }
  it { should have_many(:comments) }
  it { should have_many(:votes) }

  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:email) }

end