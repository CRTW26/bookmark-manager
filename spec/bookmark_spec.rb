require 'bookmark'

describe Bookmark do
  describe '#self.all' do
    it 'returns a list of bookmarks' do
      expect(Bookmark.all).to eq [ { name: 'Google', url: 'www.google.com', date_added: '21/09/2020' } ]
    end
  end
end