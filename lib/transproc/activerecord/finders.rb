
module Transproc
  module Activerecord
    module Finders
      extend Transproc::Registry

      def self.find(relation, *args)
        relation.find(*args)
      end

      def self.find_by(relation, *args)
        relation.find_by(relation, *args)
      end

      def self.find_each(relation, *args, &block)
        relation.find_each(*args) do |value|
          block.call(value)
        end
      end

      def self.find_in_batches(relation, *args, &block)
        relation.find_in_batches(*args) do |batch|
          block.call(batch)
        end
      end

      def self.first(relation, *args)
        relation.first(*args)
      end

      def self.last(relation, *args)
        relation.last(*args)
      end

      def self.take(relation, *args)
        relation.take(*args)
      end

      def self.none(relation)
        relation.none
      end

      def self.all(relation)
        relation.all
      end

      def self.readonly(relation)
        relation.readonly
      end

      def self.find_by_sql(relation, *args)
        relation.find_by_sql(*args)
      end
    end
  end
end
