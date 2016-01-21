# ****************bowling*game,*at*long*last*****************************
frameCount = 0
totalScore = 0


bowl_first = rand(11)

def bowl_second(bowl_first)
  bowl_two = rand(11-bowl_first)
  return bowl_first, bowl_two
end

total_score_array = Array.new

def check_strike
  first_bowl = bowl_first
  if first_bowl != 10
    second_bowl = bowl_second
    puts first_bowl, second_bowl
  else
    puts "Hooray! You're so good!"
  end
end



def bowl_both
  first_bowl = rand(11)
  if first_bowl != 10
    second_bowl = rand(11-first_bowl)
    # puts first_bowl, second_bowl
    if first_bowl + second_bowl == 10
        puts "Spare!"
        puts first_bowl, second_bowl
    else
        puts first_bowl, second_bowl
        # puts first_bowl, second_bowl
    end

  elsif first_bowl = 10
    second_bowl = "(X)"
    puts "wow! Way 2 go!"
    puts first_bowl, second_bowl
  end
end

#******************************************************************************
frameCount = 0
totalScore = 0

# $total_score = Array.new

 total_score = []
 total_score << 6
 puts total_score


def bowl_both

#  @total_score = []


  first_bowl = rand(11)
  @total_score = []
  if first_bowl != 10
    second_bowl = rand(11-first_bowl)
    if first_bowl + second_bowl == 10
        puts first_bowl, second_bowl
        @total_score[] << first_bowl << second_bowl
        puts total_score
    else
        # puts defined ? total_score
        puts first_bowl, second_bowl
        total_score << first_bowl << second_bowl
        puts total_score
    end
  elsif first_bowl = 10
    second_bowl = "(X)"
    puts "wow! Way 2 go!"
    puts first_bowl, second_bowl
  end
end

# bowl_both


#2:55 PM: first functional bowl game (with strike/spare notifications)
$total_score = []

def bowl
    frame_score = []
    first_bowl = rand(11)
    second_bowl = rand(11 - first_bowl)

    if first_bowl == 10
        second_bowl = "(X)"
        puts "Strike! Awesome!"

    elsif first_bowl + second_bowl == 10
        puts "Spare! Dope"
    end
    frame_score.push(first_bowl, second_bowl)
    $total_score.push(frame_score)
    p frame_score
    p $total_score
end

#3:30PM: functional bowling game with ledgable frame, frame-score and total score count***

$total_score = []
$frame_count = 1

def bowl
    score_so_far = 0
    puts "this is round #{$frame_count}:"
    frame_score = []
    first_bowl = rand(11)
    second_bowl = rand(11 - first_bowl)

    if first_bowl == 10
        second_bowl = 0
        puts "Strike! Awesome!"

    elsif first_bowl + second_bowl == 10
        puts "Spare! Dope"
    end
    frame_score.push(first_bowl, second_bowl)
    $total_score.push(frame_score)
    puts "You bowled: #{frame_score}"
    puts "Total tally: #{$total_score}"
    $total_score.flatten.each { |a| score_so_far += a }
    puts "score so far: #{score_so_far}"
    puts "------------------"
    $frame_count += 1
end

#*******************************************next update, 7:30

$total_score = []
$frame_count = 1

def bowl
    score_so_far = 0
    puts "this is round #{$frame_count}:"
    frame_score = []
    first_bowl = rand(11)
    second_bowl = rand(11 - first_bowl)

    if first_bowl == 10
        puts "Strike! Awesome!"
        frame_score.push(first_bowl)
        # strike = true
        # spare = false
    else
        second_bowl = rand(11 - first_bowl)
        if first_bowl + second_bowl == 10
            puts "Spare! Dope"
            spare = true
        else
            spare = false
            strike = false
        end
       frame_score.push(first_bowl, second_bowl)
    end

    # scoring

    $total_score.push(frame_score)
    puts "You bowled: #{frame_score}"
    puts "Total tally: #{$total_score}"
    $total_score.flatten.each { |a| score_so_far += a }
    puts "score so far: #{score_so_far}"
    puts "------------------"
    $frame_count += 1

end

def spare
    $total_score.each_with_index do |a, i|
        if a.length > 1 && a[0] + a[1] == 10
            if [ $total_score ][i + 1]
                a << $total_score[i + 1][0]
            end
        end
    end
end



def strike
    $total_score.each_with_index do |a,i|
        is_strike = a.length == 1
        next_array = $total_score[i + 1]
        next_array_strike = next_array.length == 1
        array_after_next = $total_score[i + 2]
        array_after_next_strike = $total_score[i + 2].length == 1

        puts case a

            when is_strike && next_array && next_array_strike && array_after_next && array_after_next_strike
                #Strike strike strike
                a << $total_score[i + 1] << $total_score[i + 2]

            when is_strike && next_array && next_array_strike && array_after_next && !array_after_next_strike
                #strike strike non-strike

                a << $total_score[i + 1] << $total_score[i + 2][0]

             when is_strike && next_array && next_array_strike && !array_after_next
                #"2 strikes, and game is over"


            when isStrike && next_array && !next_array_strike
                # one strike, one non-strike

            else
               # one strike only
            end
    end
end






# if a.length == 1
#             if [ $total_score ][i + 1]
#                 if $total_score[i + 1].length == 1
#                     if $total_score[]

#                     a << $total_score[i + 1][0] << $total_score[i + 2][0]



#                 else a << $total_score[i + 1][0] << $total_score[i + 1][1]
#                 end
#             end
#         end



        # elsif i.length == 1
        #     if (i + 1).length == 1

        #     else

        # end



bowl
bowl

spare
strike

# bowl
# bowl
# bowl
# bowl
# bowl
# bowl
# bowl
# bowl

#**************************************12:30pm next day. Tested "strike zone" & spare.*******
def find_spare
    $total_score.each_with_index do |a, i|
        if a.length > 1 && a[0] + a[1] == 10
            if $total_score [i + 1]
                p a
                p $total_score[i + 1]
                a.push($total_score[i + 1][0])
                p a
                p $total_score
            end
        else
            puts "no spare for you!"
        end
    end
end


def find_strike
    $total_score.each_with_index do |a, i|
    if a.length == 1
        #strike, strike, bowl
        if $total_score[i + 1] && $total_score[i + 1].length == 1 && $total_score[i + 2]
            a.push($total_score[i + 1][0], $total_score[i + 2][0])
            p a
        #Strike, strike, game is over
        elsif $total_score[i + 1] && $total_score[i + 1].length == 1
            a.push($total_score[i + 1][0])
            puts a
        #strike, regular bowl
        elsif $total_score[i + 1]
            a.push($total_score[i + 1][0], $total_score[i + 1][1])
        #strike, game over
        else
            puts "last strike of the game, son!"
        end
    end
end
end

def calc_final_score
    score_so_far = 0
    $total_score.flatten.each { |a| score_so_far += a}
    puts score_so_far
end
#************************************* 1:30: functional bowl, check_strike and check_spare with final tally **
$total_score = []
$frame_count = 1

def bowl
    score_so_far = 0
    puts "this is round #{$frame_count}:"
    frame_score = []
    first_bowl = rand(11)
    second_bowl = rand(11 - first_bowl)

    if first_bowl == 10
        puts "Strike! Awesome!"
        frame_score.push(first_bowl)
    else
        second_bowl = rand(11 - first_bowl)
        if first_bowl + second_bowl == 10
            puts "Spare! Dope"
        else
        end
       frame_score.push(first_bowl, second_bowl)
    end

    $total_score.push(frame_score)
    puts "You bowled: #{frame_score}"
    puts "Score board: #{$total_score}"
    $total_score.flatten.each { |a| score_so_far += a }
    puts "score so far: #{score_so_far}"
    puts "------------------"
    $frame_count += 1

end

def find_spare
    puts "The game's over now. We're going to adjust the score for spares."
    $total_score.each_with_index do |a, i|
        if a.length > 1 && a[0] + a[1] == 10
            if $total_score [i + 1]
                a.push($total_score[i + 1][0])
                puts "You got a spare! score updated"
                p $total_score
                puts "--------------------------"
            end
        end
    end
end


def find_strike
    puts "Now we're going to adjust scoring for strikes."
    puts "----------------"
    $total_score.each_with_index do |a, i|
    if a.length == 1
        #strike, strike, bowl
        if $total_score[i + 1] && $total_score[i + 1].length == 1 && $total_score[i + 2]
            puts "two strikes in a row; you dog!"
            a.push($total_score[i + 1][0], $total_score[i + 2][0])
        #Strike, strike, game is over
        elsif $total_score[i + 1] && $total_score[i + 1].length == 1
            a.push($total_score[i + 1][0])
            puts a
        #strike, regular bowl
        elsif $total_score[i + 1]
            puts "nice strike, champ!"
            a.push($total_score[i + 1][0], $total_score[i + 1][1])
        #strike, game over
        else
            puts "last strike of the game, son! No bonus."
        end
    end
end
end

bowl
bowl
bowl
bowl
bowl
bowl
find_spare
find_strike

puts "final scoreboard: #{$total_score}"

def calc_final_score
    final_score = 0
    $total_score.flatten.each { |a| final_score += a}
    puts "Your final score: #{final_score}"
end
calc_final_score


#***2:45. Complete game logic with final frame and strikes, though messy**
$total_score = []
$frame_count = 1

def find_spare
    puts "The game's over now. We're going to adjust the score for spares."
    $total_score.each_with_index do |a, i|
        if a.length > 1 && a[0] + a[1] == 10
            if $total_score [i + 1]
                a.push($total_score[i + 1][0])
                puts "You got a spare! score updated"
                p $total_score
                puts "--------------------------"
            end
        end
    end
end

def find_strike
    puts "Now we're going to adjust scoring for strikes."
    puts "----------------"
    $total_score.each_with_index do |a, i|
    if a.length == 1
        #strike, strike, bowl
        if $total_score[i + 1] && $total_score[i + 1].length == 1 && $total_score[i + 2]
            puts "two strikes in a row; you dog!"
            a.push($total_score[i + 1][0], $total_score[i + 2][0])
        #Strike, strike, game is over
        elsif $total_score[i + 1] && $total_score[i + 1].length == 1
            a.push($total_score[i + 1][0])
            puts a
        #strike, regular bowl
        elsif $total_score[i + 1]
            puts "nice strike, champ!"
            a.push($total_score[i + 1][0], $total_score[i + 1][1])
        #strike, game over
        else
            puts "last strike of the game, son! No bonus."
        end
    end
end
end

def last_frame
    puts $frame_count
    frame_score = []
    first_bowl = rand(11)
    second_bowl = rand(11 - first_bowl)
    second_first_bowl = rand(11)
    second_second_bowl = rand(11 - second_first_bowl)
    third_first_bowl = rand(11)
    if first_bowl == 10
        puts "Strike! Awesome!"
        if second_first_bowl == 10
            puts "double strike! on a roll (no pun intended)."
            frame_score.push(first_bowl, second_first_bowl, third_first_bowl)
        else
            frame_score.push(first_bowl, second_first_bowl, second_second_bowl)
        end
    elsif first_bowl + second_bowl == 10
            puts "nice! You get an extra ball."
            frame_score.push(first_bowl, second_bowl, second_first_bowl)
    else
        frame_score.push(first_bowl, second_bowl)
    end


end

def bowl
    if $frame_count == 10
        last_frame
    else
        score_so_far = 0
        puts "this is round #{$frame_count}:"
        frame_score = []
        first_bowl = rand(11)
        second_bowl = rand(11 - first_bowl)

        if first_bowl == 10
            puts "Strike! Awesome!"
            frame_score.push(first_bowl)
        else
            second_bowl = rand(11 - first_bowl)
            if first_bowl + second_bowl == 10
                puts "Spare! Dope"
            else
            end
           frame_score.push(first_bowl, second_bowl)
        end

        $total_score.push(frame_score)
        puts "You bowled: #{frame_score}"
        puts "Score board: #{$total_score}"
        $total_score.flatten.each { |a| score_so_far += a }
        puts "score so far: #{score_so_far}"
        puts "------------------"
        $frame_count += 1
    end
end
#************************3:05, buggy spare thing

$total_score = []
$frame_count = 1

def find_spare
    puts "--------------------------"
    puts "The game's over now. We're going to adjust the score for spares."
    $total_score.each_with_index do |a, i|
        if a.length > 1 && a[0] + a[1] == 10
            if $total_score [i + 1]
                a.push($total_score[i + 1][0])
                p $total_score
            end
        end
    end
    puts "score updated"
end

def find_strike
    puts "----------------"
    puts "Now we're going to adjust scoring for strikes."
    $total_score.each_with_index do |a, i|
    if a.length == 1
        #strike, strike, bowl
        if $total_score[i + 1] && $total_score[i + 1].length == 1 && $total_score[i + 2]
            puts "two strikes in a row; you dog!"
            a.push($total_score[i + 1][0], $total_score[i + 2][0])
        #Strike, strike, game is over
        elsif $total_score[i + 1] && $total_score[i + 1].length == 1
            a.push($total_score[i + 1][0])
            puts a
        #strike, regular bowl
        elsif $total_score[i + 1]
            puts "nice strike, champ!"
            a.push($total_score[i + 1][0], $total_score[i + 1][1])
        #strike, game over
        else
            puts "last strike of the game, son! No bonus."
        end
    end
end
end

def last_frame
    puts "this is round #{$frame_count}"
    frame_score = []
    first_bowl = rand(11)
    second_bowl = rand(11 - first_bowl)
    second_first_bowl = rand(11)
    second_second_bowl = rand(11 - second_first_bowl)
    third_first_bowl = rand(11)
    if first_bowl == 10
        puts "Strike! Awesome!"
        if second_first_bowl == 10
            puts "double strike! on a roll (no pun intended)."
            frame_score.push(first_bowl, second_first_bowl, third_first_bowl)
        else
            frame_score.push(first_bowl, second_first_bowl, second_second_bowl)
        end
    elsif first_bowl + second_bowl == 10
            puts "nice! You get an extra ball."
            frame_score.push(first_bowl, second_bowl, second_first_bowl)
    else
        frame_score.push(first_bowl, second_bowl)
    end
    puts "You bowled: #{frame_score}"
    puts "Score board: #{$total_score}"
    find_strike
    find_spare
end


def bowl
    if $frame_count == 10
        last_frame
    else
        score_so_far = 0
        puts "this is round #{$frame_count}:"
        frame_score = []
        first_bowl = rand(11)
        second_bowl = rand(11 - first_bowl)

        if first_bowl == 10
            puts "Strike! Awesome!"
            frame_score.push(first_bowl)
        else
            second_bowl = rand(11 - first_bowl)
            if first_bowl + second_bowl == 10
                puts "Spare! Dope"
            else
            end
           frame_score.push(first_bowl, second_bowl)
        end

        $total_score.push(frame_score)
        puts "You bowled: #{frame_score}"
        puts "Score board: #{$total_score}"
        $total_score.flatten.each { |a| score_so_far += a }
        puts "score so far: #{score_so_far}"
        puts "------------------"
        $frame_count += 1
    end
end

#3:25: final logic (or so I think)***************************
$total_score = []
$frame_count = 1

def find_spare
    puts "--------------------------"
    puts "The game's over now. We're going to adjust the score for spares."
    $total_score.each_with_index do |a, i|
        if a.length > 1 && a[0] + a[1] == 10
            if $total_score [i + 1]
                a.push($total_score[i + 1][0])
                puts"-----------------------", "We updated the score, like so: #{$total_score}"
            end
        end
    end
    puts "Score updated!"
end

def find_strike
    puts "----------------"
    puts "Now we're going to adjust scoring for strikes."
    $total_score.each_with_index do |a, i|
    if a.length == 1
        #strike, strike, bowl
        if $total_score[i + 1] && $total_score[i + 1].length == 1 && $total_score[i + 2]
            puts "two strikes in a row; you dog!"
            a.push($total_score[i + 1][0], $total_score[i + 2][0])
        #Strike, strike, game is over
        elsif $total_score[i + 1] && $total_score[i + 1].length == 1
            a.push($total_score[i + 1][0])
            puts a
        #strike, regular bowl
        elsif $total_score[i + 1]
            a.push($total_score[i + 1][0], $total_score[i + 1][1])
        #strike, game over
        else
            puts "last strike of the game, son! No bonus."
        end
    end
end
end

def final_score
    p "after all that, this is the scoreboard: #{$total_score}"
    final_score = 0
    $total_score.flatten.each{ |a| final_score += a }
    puts "Your final score is: #{final_score}"
end

def last_frame
    puts "this is round 10"
    frame_score = []
    first_bowl = rand(11)
    second_bowl = rand(11 - first_bowl)
    second_first_bowl = rand(11)
    second_second_bowl = rand(11 - second_first_bowl)
    third_first_bowl = rand(11)
    if first_bowl == 10
        puts "Strike! Awesome!"
        if second_first_bowl == 10
            puts "double strike! on a roll (no pun intended)."
            frame_score.push(first_bowl, second_first_bowl, third_first_bowl)
        else
            frame_score.push(first_bowl, second_first_bowl, second_second_bowl)
        end
    elsif first_bowl + second_bowl == 10
            puts "nice! You get an extra ball."
            frame_score.push(first_bowl, second_bowl, second_first_bowl)
    else
        frame_score.push(first_bowl, second_bowl)
    end
    puts "You bowled: #{frame_score}"
    puts "Score board: #{$total_score}"
    find_spare
    find_strike
    final_score
end


def bowl
    if $frame_count == 10
        last_frame
    else
        score_so_far = 0
        puts "this is round #{$frame_count}:"
        frame_score = []
        first_bowl = rand(11)
        second_bowl = rand(11 - first_bowl)

        if first_bowl == 10
            puts "Strike! Awesome!"
            frame_score.push(first_bowl)
        else
            second_bowl = rand(11 - first_bowl)
            if first_bowl + second_bowl == 10
                puts "Spare! Dope"
            else
            end
           frame_score.push(first_bowl, second_bowl)
        end

        $total_score.push(frame_score)
        puts "You bowled: #{frame_score}"
        puts "Score board: #{$total_score}"
        $total_score.flatten.each { |a| score_so_far += a }
        puts "score so far: #{score_so_far}"
        puts "------------------"
        $frame_count += 1
    end
end
