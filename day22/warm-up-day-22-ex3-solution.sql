use tutorial;

SELECT COUNT(*) from tictactoe;

SELECT COUNT(winner) from tictactoe WHERE winner = 'o';

SELECT COUNT(winner) from tictactoe WHERE winner = 'x';

SELECT COUNT(winner) from tictactoe WHERE (`middle-middle-square` = 'x' AND `winner`='x') OR (`middle-middle-square` = 'o' AND `winner`='o');

SELECT `middle-middle-square`, COUNT(winner) from tictactoe WHERE winner='x' GROUP BY `middle-middle-square`;

SELECT `middle-middle-square`, COUNT(winner) from tictactoe WHERE winner='o' GROUP BY `middle-middle-square`;
