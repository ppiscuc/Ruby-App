class Manual < ActiveRecord::Base
    attr_accessible :name, :value, :brief
    validates :name, :presence => true
    validates :value, :presence => true
end
