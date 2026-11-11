.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
or esi, ebx
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 42
add sil, -61
and sil, sil
jmp .bb_0.1
.bb_0.1:
cbw
sub rax, -2089384489
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
test si, 53
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
