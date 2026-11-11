.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and cl, dil
not dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
jmp .bb_0.2
.bb_0.2:
test al, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
