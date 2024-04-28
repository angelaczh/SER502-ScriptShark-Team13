:- include(dummy_tokenizer).
:- include(parser).
:- include(interpreter).

getProgram(FileName, ProgramAtom) :-
    setup_call_cleanup(
        open(FileName, read, Stream),
        read_string(Stream, _, ProgramString),
        close(Stream)
    ),
    atom_string(ProgramAtom, ProgramString).

run :- 
    current_prolog_flag(argv, [File]),
    atom_string(File, FileName),
    getProgram(FileName, ProgramAtom), 

    dummy_tokenize(ProgramAtom, Tokens),
    program(T, Tokens, []), program_eval(T, Ret).
