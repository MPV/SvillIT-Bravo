pdf.text "Medlemslista", :size => 30, :style => :bold

pdf.move_down(30)

users = @users do |user|
  [
      user.login,
      user.name,
      user.surname,
      user.city
  ]
end

pdf.table users, :border_style => :grid,
  :row_colors => ["FFFFFF","DDDDDD"],
  :headers => ["Anvandarnamn", "Fornamn", "Efternamn", "Ort"],
  :align => { 0 => :left, 1 => :right, 2 => :right, 3 => :right }

pdf.move_down(10)

pdf.text "Totalt antal anvandare #{@users.count}", :size => 16, :style => :bold
