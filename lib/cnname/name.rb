module Cnname
  class Name
    attr_reader :first_name, :last_name

    def initialize(name)
      @first_name, @last_name = parse(name)
    end

    private
    def parse(name)
      if hanzi_compound_surnames.include?(name[0..1])
        [name[2..-1], name[0..1]]
      elsif hanzi_singleton_surnames.include?(name[0])
        [name[1..-1], name[0]]
      else
        raise 'Invalid Chinese name'
      end
    end

    def singleton_surnames
      @singleton_surnames ||= Oj.load(File.open(File.join(File.dirname(__FILE__), '../../data/singleton_surnames.json')))
    end

    def compound_surnames
      @compound_surnames ||= Oj.load(File.open(File.join(File.dirname(__FILE__), '../../data/compound_surnames.json')))
    end

    def hanzi_singleton_surnames
      @hanzi_singleton_surnames ||= singleton_surnames.collect { |n| n['hanzi'] }
    end

    def hanzi_compound_surnames
      @hanzi_compound_surnames ||= compound_surnames.collect { |n| n['hanzi'] }
    end
  end
end
