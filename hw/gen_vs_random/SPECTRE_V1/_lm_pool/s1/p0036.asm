.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 40 # instrumentation
btc rdi, rdi
add sil, -68
xchg rbx, rcx
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
sub bl, dl
jmp .bb_0.1
.bb_0.1:
test dl, -36
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
