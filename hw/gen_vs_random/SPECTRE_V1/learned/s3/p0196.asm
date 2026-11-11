.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
add al, bl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovz edi, edx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
xchg al, dil
sub dl, bl
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
sub cl, bl
sbb al, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
