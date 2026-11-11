.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 92
add dl, 47
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
