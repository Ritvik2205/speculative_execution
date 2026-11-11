.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 88
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rsi]
test bl, al
test al, -126
add al, -13
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, 63
lea rax, qword ptr [rdi + rcx]
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
add al, al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
