class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end

# JLF:  Here, the class CreateArticles is inheriting from Migration, a sub-class of the ActiveRecord class.  
# JLF:  Def change refers to us changing the structure of the database



