.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
xor dil, -42
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
sbb bl, dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -98
lea edi, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
