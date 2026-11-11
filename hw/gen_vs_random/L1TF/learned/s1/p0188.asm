.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -95 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 36
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
and ax, 7954
and al, -68
and al, -68
test rax, rsi
jmp .bb_0.2
.bb_0.2:
lea si, qword ptr [rdi + rax + 47]
and rax, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rax]
cmp dil, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
