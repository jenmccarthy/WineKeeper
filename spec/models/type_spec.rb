require 'rails_helper'

describe Type do
  it { should validate_presence_of :name }

  it { should have_many :wines }
  it { should have_many :tags }
end
