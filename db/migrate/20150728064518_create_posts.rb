class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :resentful_at
      t.text :cause
      t.text :affects_my
      t.text :my_part
      t.text :selfish
      t.text :dishonest
      t.text :afraid
      t.text :owe_an_apology
      t.text :kept_to_myself
      t.text :kind_and_loving
      t.text :done_better
      t.text :thinking_of_myself
      t.text :thinking_of_others
      t.text :defects
      t.text :gratitude
      t.timestamps null: false
    end
  end
end
