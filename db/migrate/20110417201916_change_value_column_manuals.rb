class ChangeValueColumnManuals < ActiveRecord::Migration
  def self.up
      change_column :manuals, :value, :longtext
  end

  def self.down
      change_column :manuals, :value, :text
  end
end
