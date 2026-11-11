.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
cmp rdx, -19
setns sil
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
cmp cx, 88
xchg dil, cl
xor cl, 71
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
or sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
