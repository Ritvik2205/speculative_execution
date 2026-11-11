.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
xchg bl, sil
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
test ecx, 58
add bl, sil
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add dil, -7
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
