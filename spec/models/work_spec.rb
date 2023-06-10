require 'rails_helper'
# TODO: Add Factory_Bot
RSpec.describe Work, type: :model do
  context 'Work' do
    let(:work) { Work.new }
    it 'should not have empty tags' do
      expect(:works.tag_list.empty?).to be false
    end

    it 'should have title' do
    end

    it 'should have more than three tags' do
      expect(:works.tag_list.count).to be >= 3
    end

    it 'should have an author' do
    end
  end
end
