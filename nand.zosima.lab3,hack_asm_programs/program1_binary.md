# Program 1: Binary Machine Code

## Assembly Code

```
@2
D=A
@3
D=D+A
```

## Binary Machine Code

| Instruction | Type | Binary Code      |
|-------------|------|------------------|
| @2          | A    | 0000000000000010 |
| D=A         | C    | 1110110000010000 |
| @3          | A    | 0000000000000011 |
| D=D+A       | C    | 1110000010010000 |

## Instruction Field Breakdown

| Instruction | Comp    | Dest | Jump |
|-------------|---------|------|------|
| D=A         | 0110000 | 010  | 000  |
| D=D+A       | 0000010 | 010  | 000  |
