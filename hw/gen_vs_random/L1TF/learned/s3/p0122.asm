.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
neg dl
and dil, -82
lea ax, qword ptr [rbx + rsi + 97]
test ecx, 27
sbb rdi, 7
mov bl, cl
cmp dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
