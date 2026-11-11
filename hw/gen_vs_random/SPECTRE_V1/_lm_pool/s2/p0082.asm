.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 42
and sil, cl
xchg ebx, ecx
sub al, dl
cmp al, dl
xor dil, bl
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
sbb bl, al
and ax, 23118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
