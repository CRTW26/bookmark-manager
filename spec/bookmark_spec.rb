require 'bookmark'

describe Bookmark do

  describe '#self.all' do
    before(:each) do 
    drop_table
     end 
    it 'returns a list of bookmarks' do
      expect(Bookmark.all('bookmark_manager_test')).to include "www.makersacademy.com"
    end
  end
end