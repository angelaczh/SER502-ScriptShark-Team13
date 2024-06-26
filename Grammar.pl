
% Program starts with a block and ends with a period
program --> block, ['.'].

% Block definition
block --> [begin], command, [end].

% Commands
command --> command, [';'], command.
command --> [num], identifier, [':='], expression.
command --> [bool], identifier, [':='], boolean_expr.
command --> [str], identifier, [':='], string.
command --> [if], boolean_expr, [then], command, [else], command, [endif].
command --> boolean_expr, ['?'], command, [':'], command.
command --> [while], boolean_expr, [do], command, [endwhile].
command --> [for, '('], command, [';'], boolean_expr, [';'], command, [')', do], command, [endfor].
command --> [for], declaration, [in, range, '('], number, [','], number, [')', do], command, [endfor].
command --> [print, '('], identifier, [')'].
command --> keyword.

% Boolean expressions
boolean_expr --> [true].
boolean_expr --> [false].
boolean_expr --> expression, ['='], expression.
boolean_expr --> boolean_expr, ['='], boolean_expr.
boolean_expr --> string, ['='], string.
boolean_expr --> [not], boolean_expr.

% Arithmetic expressions
expression --> expression, ['+'], expression.
expression --> expression, ['-'], expression.
expression --> expression, ['*'], expression.
expression --> expression, ['/'], expression.
expression --> ['('], expression, [')'].
expression --> identifier.
expression --> number.

% Identifiers
identifier --> [I].

% Numbers
number --> [N].

% Strings
string --> ['"'], chars, ['"'].

% Characters sequence
chars --> char.
chars --> char, chars.

% Character
char --> [X], { char_code(X) }.

% Definitions for identifier, keyword, number (N), and digits (Dig)
identifier --> char, { char_type(Char, alpha) }.
keyword --> [for]; [if]; [then]; [else]; [endif]; [while]; [do]; [endwhile]; [num]; [bool]; [str].
number --> digit, digits.
digits --> digit; digit, digits.
digit --> [X], { char_type(X, digit) }.
