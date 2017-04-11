
module Transproc
  module Activerecord
    module Scoping
      extend Transproc::Registry

      def self.scope(relation, method, *args)
        relation.public_send(method,*args)
      end

      def self.unscope(relation, *args)
        relation.unscope(*args)
      end

      def self.only(relation, *args)
        relation.only(*args)
      end

      def self.rewhere(relation, *args)
        relation.only(*args)
      end

      def self.reverse_order(relation)
        relation.reverse_order
      end

      def self.create_with(relation, *args)
        relation.create_with(*args)
      end

      def self.lock(relation, *args)
        relation.lock(*args)
      end
    end
  end
end
