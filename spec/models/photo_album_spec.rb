require 'spec_helper'

describe Photoalbum do
  context 'validations' do
    it { should validate_presence_of :name }
  end

  context 'associations' do
    it { should have_many :pictures }
  end
end
