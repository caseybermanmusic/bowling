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
