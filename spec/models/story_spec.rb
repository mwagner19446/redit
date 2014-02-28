require 'spec_helper'

describe Story do 

  it { should belong_to (:users) }
  it { should have_many (:users).through(:votes) }
  it { should have_many (:users).through(:comments) }

  it { should validate_presence_of (:url) }
  it { should validate_presence_of (:title) }
  it { should validate_presence_of (:created_at) }
  it { should validate_presence_of (:updated_at) }

  it { should validate_uniqueness_of (:url) }
end 

