require 'rails_helper'

describe Wine do
  it { should validate_presence_of :name }
  it { should belong_to :type }
end
