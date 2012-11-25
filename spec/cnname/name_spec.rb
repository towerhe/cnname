# -*- encoding: utf-8 -*-
require 'spec_helper'

describe Cnname::Name do
  subject { Cnname::Name.new(name) }

  context 'when given a single surname' do
    context 'and the first name only has one word' do
      let(:name) { '张三' }

      its(:first_name) { should == '三' }
      its(:last_name) { should == '张' }
    end

    context 'and the first name has more than one word' do
      let(:name) { '张三丰' }

      its(:first_name) { should == '三丰' }
      its(:last_name) { should == '张' }
    end
  end

  context 'when given a compound surname' do
    context 'and the first name only has one word' do
      let(:name) { '诸葛亮' }

      its(:first_name) { should == '亮' }
      its(:last_name) { should == '诸葛' }
    end

    context 'and the first name has more than one word' do
      let(:name) { '西门吹雪' }

      its(:first_name) { should == '吹雪' }
      its(:last_name) { should == '西门' }
    end
  end

  context 'when given an invalid surname' do
    it 'raises an error' do
      expect { Cnname::Name.new('不存在') }.to raise_error
    end
  end
end
