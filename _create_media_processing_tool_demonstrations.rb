class CreateMediaProcessingToolDemonstrations < ActiveRecord::Migration
  def self.up
    create_table :action_media_processing_tool_demonstrations do |t|
      t.string :name
      t.string :comments
      t.string :operation

      t.timestamps
    end
  end

  def self.down
    drop_table :action_media_processing_tool_demonstrations
  end
end
