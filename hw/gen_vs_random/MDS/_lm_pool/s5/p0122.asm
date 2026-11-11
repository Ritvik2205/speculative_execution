.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 66
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
test cl, 62
btr dx, bx
xor rdx, -59
test eax, -409834435
test bl, -114
test edx, -1561252782
and dil, dil
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 93
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
test bl, -114
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
