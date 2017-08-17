# Brain C

Compile your C Code into Brainfuck

## Features

- [x] Variable Declaration - `int a`
- [x] Variable Assignment - `a = 5`
- [x] Console Output - `putchar(a)`
- [ ] Console Input - `int a = getchar()`
- [ ] Combined Line Decl/Asn - `int a = 5`
- [ ] if Statements
- [ ] Data Types - `char`, `short`, `int`, `long`
- [ ] Inline Values - `putchar(5)`

*Of course, feel free to submit additional feature requests via Github Issues.*

## Installation

```
$ gem install brain_c
```

## Usage

To compile a C file into Brainfuck:

```
$ bfc source.c
```

Which will place the output in `a.out`. Alternatively, to specify an output file:

```
$ bfc source.c -o output.bf
```
