class Manual < ActiveRecord::Base
    attr_accessible :name, :value, :brief
    validates :name, :presence => true
    validates :value, :presence => true

    define_index do
        #fields
        indexes value, :sortable => true
        indexes brief, :sortable => true
        #attributes
    end
end
