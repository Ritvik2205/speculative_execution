.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
xor dil, sil
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rcx
mov cl, sil
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
cmp rbx, 38
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
sub al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
