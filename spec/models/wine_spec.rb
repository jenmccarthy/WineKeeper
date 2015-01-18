require 'rails_helper'

describe Wine do
  it { should validate_presence_of :name }
  it { should validate_presence_of :region }
  it { should validate_presence_of :year }
  it { should validate_presence_of :type_id }


  it { should belong_to :type }
end
