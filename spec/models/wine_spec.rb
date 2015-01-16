require 'rails_helper'

describe Wine do
  it { should validate_presence_of :name }
end
