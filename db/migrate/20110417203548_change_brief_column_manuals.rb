class ChangeBriefColumnManuals < ActiveRecord::Migration
  def self.up
       change_column :manuals, :brief, :longtext
  end

  def self.down
      change_column :manuals, :brief, :text
  end
end
