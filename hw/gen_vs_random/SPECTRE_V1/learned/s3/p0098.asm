.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
test al, cl
sub dl, cl
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
js .bb_0.1
jmp .exit_0
.bb_0.1:
test sil, -31
neg dil
lea rdi, qword ptr [rbx + rdx]
sub dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
