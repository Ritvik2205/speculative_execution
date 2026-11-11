.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
cdq
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
setp cl
add rax, 6
and rbx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rbx]
lea cx, qword ptr [rax + rdi + 54]
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
sbb ax, -17107
cmp rdx, -19
mov bl, al
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], dx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
