class AddBriefToManuals < ActiveRecord::Migration
  def self.up
    add_column :manuals, :brief, :text
  end

  def self.down
    remove_column :manuals, :brief
  end
end
