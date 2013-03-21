require 'spec_helper'

describe Photoalbum do

  context 'attributes' do
    it { should have_db_column :name }
  end

  context 'associations' do
    it { should have_many :pictures }
  end

  context 'validations' do
    it { should validate_presence_of :name }
  end

end
