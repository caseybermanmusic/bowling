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
 bowling
