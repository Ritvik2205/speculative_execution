.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], si
sub al, bl
setz dl
test dil, -116
sbb bl, al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdi]
xor dl, bl
xchg rcx, rdx
cmp rdx, -19
lea di, qword ptr [rax + rsi + 20]
sub rsi, 97
sbb bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
