require 'rails_helper'

RSpec.describe Work, type: :model do
  context 'Work' do
    let(:work) { Work.new }
    it 'should not have empty tags' do
      expect(:works.tag_list.count).to be >= 1
    end

    it 'should have title' do
    end

    it 'should have an author' do
    end
  end
end
