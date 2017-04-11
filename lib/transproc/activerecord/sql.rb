
module Transproc
  module Activerecord
    module Sql
      extend Transproc::Registry

      def self.select(relation, *args)
        relation.select(*args)
      end

      def self.distinct(relation, *args)
        relation.distinct(*args)
      end

      def self.from(relation, *args)
        relation.from(*args)
      end

      def self.where(relation, *args)
        relation.where(*args)
      end

      def self.where_not(relation, *args)
        relation.where.not(*args)
      end

      def self.order(relation, *args)
        relation.order(*args)
      end

      def self.group(relation, *args)
        relation.group(*args)
      end

      def self.having(relation, *args)
        relation.having(*args)
      end

      def self.limit(relation, *args)
        relation.limit(*args)
      end

      def self.offset(relation, *args)
        relation.offset(*args)
      end
    end
  end
end
