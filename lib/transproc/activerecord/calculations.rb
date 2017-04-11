
module Transproc
  module Activerecord
    module Calculations
      extend Transproc::Registry

      def self.count(relation, *args)
        relation.count(*args)
      end

      def self.average(relation, *args)
        relation.average(*args)
      end

      def self.minimum(relation, *args)
        relation.minimum(*args)
      end

      def self.maximum(relation, *args)
        relation.maximum(relation, *args)
      end

      def self.sum(relation, *args)
        relation.sum(*args)
      end
    end
  end
end
