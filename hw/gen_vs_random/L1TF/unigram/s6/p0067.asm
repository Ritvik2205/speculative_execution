.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cx, 93
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
adc cl, bl
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rbx
seto bl
xor al, 89
test bl, 45
or dil, dil
and rsi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rax + rdx + 81]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 52
add bl, -125 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
add al, -34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
xor ax, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
