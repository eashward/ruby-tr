require 'spec_helper'

RSpec.describe Announcement, type: :model do
  context '#create' do
    it 'is invalid without title' do
      announcement = FactoryGirl.build(:announcement, title: nil)
      expect(announcement).not_to be_valid
    end

    it 'is invalid without content' do
      announcement = FactoryGirl.build(:announcement, content: nil)
      expect(announcement).not_to be_valid
    end
  end
end