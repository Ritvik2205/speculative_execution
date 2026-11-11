.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
and rax, 1163013815
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
and dl, 32
jmp .bb_0.1
.bb_0.1:
and dl, 59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
bt rsi, rbx
or rax, 1808026647
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
