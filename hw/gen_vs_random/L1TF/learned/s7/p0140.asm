.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 45
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
and bl, 89
and rbx, rcx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
jmp .bb_0.1
.bb_0.1:
and dl, 59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
test dl, -37
test bl, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
