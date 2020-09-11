$board=[["-","-","-"],
["-","-","-"],
["-","-","-"]]
$x=1

p $board[0]
p $board[1]
p $board[2]

def win_check
    if $board[0]==["X","X","X"] || $board[1]==["X","X","X"] || $board[2]==["X","X","X"] || $board.transpose[0]==["X","X","X"] || $board.transpose[1]==["X","X","X"] || $board.transpose[2]==["X","X","X"] || ($board[0][0]+$board[1][1]+$board[2][2])=="XXX" || ($board[0][2]+$board[1][1]+$board[2][0])=="XXX"
        puts "PLAYER 1 WINS"
        $x=10
    elsif $board[0]==["O","O","O"] || $board[1]==["O","O","O"] || $board[2]==["O","O","O"] || $board.transpose[0]==["O","O","O"] || $board.transpose[1]==["O","O","O"] || $board.transpose[2]==["O","O","O"] || ($board[0][0]+$board[1][1]+$board[2][2])=="OOO" || ($board[0][2]+$board[1][1]+$board[2][0])=="OOO"
        puts "PLAYER 2 WINS"
        $x=10
    else
        $x=$x+1
    end
end


until $x==10 do
    puts "Enter the Co-ordinates between 0-2:"
        choice = [gets.chomp.to_i , gets.chomp.to_i]
        row_value = choice[0]
        col_value = choice[1]
        if row_value<3 && col_value<3
        if $board[row_value][col_value] == "-"
            if $x.odd?
                $board[row_value][col_value] = "X"
            else
                $board[row_value][col_value] = "O"
            end
        else
            p "Place Already Occupied"
            $x=$x-1
        end
        else
            p "Enter Co-odinates within Range"
            $x=$x-1
        end
        p $board[0]
        p $board[1]
        p $board[2]
        win_check
end




