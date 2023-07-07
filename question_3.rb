def question_3(arr)
    teams = Hash.new { |hash, key| hash[key] = [0, 0, 0] }
    # i am taking help for this question 
    arr.each do |game|
      team1, score1, score2, team2 = game.split(/ |-/)
      score1 = score1.to_i
      score2 = score2.to_i
      
      if score1 > score2
        teams[team1][0] += 3
      elsif score2 > score1
        teams[team2][0] += 3
      else
        teams[team1][0] += 1
        teams[team2][0] += 1
      end
      
      teams[team1][1] += score1
      teams[team2][1] += score2
      teams[team1][2] += (score1 - score2)
      teams[team2][2] += (score2 - score1)
    end
    
    teams.to_a.sort_by { |team| [-team[1][0], -team[1][1], -team[1][2]] }
  end
  p question_3(["A 0 - 1 B", "C 2 - 0 D", "B 2 - 2 C", "D 3 - 1 A", "A 2 - 2 C", "B 2 - 0 D"])