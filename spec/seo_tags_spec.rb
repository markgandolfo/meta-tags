require 'spec_helper'

describe Seo do
  subject { ActionView::Base.new }

  context 'module' do
    it 'should be mixed into ActionView::Base' do
      expect(ActionView::Base.included_modules).to include(Seo)
    end
  end

  context 'tags' do
    it 'should allow tags to be added' do
      subject.set_meta('description', 'a description')
      output = subject.meta_tags

      expect(output).to eq("<meta content=\"a description\" property=\"description\" />")
    end

    it 'should overwrite tags with the same property' do
      subject.set_meta('description', 'a description')
      subject.set_meta('description', 'a new description')
      output = subject.meta_tags

      expect(output).to eq("<meta content=\"a new description\" property=\"description\" />")
    end
  end

  context 'title' do
    it 'should allow titles to be added using a special helper' do
      subject.set_title('my title')
      output = subject.meta_tags

      expect(output).to eq('<title>my title</title>')
    end
  end
end

