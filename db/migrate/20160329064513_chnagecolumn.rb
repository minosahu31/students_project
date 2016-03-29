class Chnagecolumn < ActiveRecord::Migration
  def change
  	change_column_default :students, :marks, 0
  end
end
