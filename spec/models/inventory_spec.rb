require 'spec_helper'

describe Inventory do

  describe 'validation tests' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
    it { should validate_presence_of :quantity }
  end

  describe 'database tests' do
    it { should have_db_column(:title).of_type(:string).with_options(null: false) }
    it { should have_db_column(:description).of_type(:text).with_options(null: false) }
    it { should have_db_column(:quantity).of_type(:integer).with_options(null: false) }
  end

end
