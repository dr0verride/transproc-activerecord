
module Transproc
  module Activerecord
    module Extracts
      extend Transproc::Registry

      def self.select_all(relation, *args)
        relation.select_all(*args)
      end

      def self.pluck(relation, *args)
        relation.pluck(*args)
      end

      def self.ids(relation)
        relation.ids
      end

      def self.to_json(relation, *args)
        relation.to_json(*args)
      end

      def self.pluck_to_hash(relation, *columns, **column_mappings)
        # Unify all columns into a single hash: [alias => column/aggregate]
        column_mappings = columns.each_with_object(column_mappings.dup) do |column, hash|
          case column
          when String
            col = column.split(/\bas\b/i).map(&:strip)
            hash[col[-1].to_sym] = col[0]
          when Symbol
            hash[col] = col
          end
        end

        
        columns, keys = if column_mappings.blank?
                                 [column_names, column_names]
                               else
                                 [column_mappings.values, column_mappings.keys]
                               end

        if columns.size == 1
          key = keys.first
          relation.pluck(*columns).map do |value|
            {key => value}
          end
        else
          relation.pluck(*columns).map do |row|
            Hash[keys.zip(row)]
          end
        end
      end
    end
  end
end
