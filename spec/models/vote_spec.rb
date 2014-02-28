require "spec_helper"

describe Vote do
  it { should belong_to(:story)}
  it { should belong_to(:user)}
  it { should belong_to(:story)}

  it { should validate_presence_of(:story) }
  it { should validate_presence_of(:user) }
  it { should validate_presence_of(:vote) }

end