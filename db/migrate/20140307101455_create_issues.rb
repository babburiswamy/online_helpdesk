class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :category
      t.string :severity
      t.string :prority
      t.string :issue_type
      t.string :issue_box

      t.timestamps
    end
  end
end
