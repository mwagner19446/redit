require 'spec_helper'

describe User do 

  it { should have_many (:stories) }
  it { should have_many (:stories).through(:votes) }
  it { should have_many (:stories).through(:comments) }

  it { should validate_presence_of (:email) }
  it { should validate_presence_of (:user_name) }
  it { should validate_presence_of (:password_digest) }

  it { should validate_uniqueness_of (:email) }
  it { should validate_uniqueness_of (:user_name) }

end