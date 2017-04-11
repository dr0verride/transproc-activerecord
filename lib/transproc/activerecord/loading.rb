
module Transproc
  module Activerecord
    module Loading
      extend Transproc::Registry

      def self.includes(relation, *args)
        relation.includes(*args)
      end

      def self.eager_load(relation, *args)
        relation.eager_load(relation, *args)
      end

      def self.preload(relation, *args)
        relation.preload(*args)
      end

      def self.joins(relation, *args)
        relation.joins(*args)
      end

      def self.references(relation, *args)
        relation.references(*args)
      end

      def self.left_outer_joins(relation, *args)
        relation.left_outer_joins(*args)
      end

    end
  end
end
