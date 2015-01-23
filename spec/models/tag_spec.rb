require 'rails_helper'

describe Tag do
  it { should validate_presence_of :name }
  it { should validate_presence_of :type_id }

  it { should belong_to :type }
end
