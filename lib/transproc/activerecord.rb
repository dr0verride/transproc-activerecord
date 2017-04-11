require 'transproc/registry'

require "transproc/activerecord/version"

module Transproc
  module Activerecord
    extend Transproc::Registry

    import Transproc::Activerecord::Sql
    import Transproc::Activerecord::Finders
    import Transproc::Activerecord::Loading
    import Transproc::Activerecord::Calculations
    import Transproc::Activerecord::Scoping
  end
end
