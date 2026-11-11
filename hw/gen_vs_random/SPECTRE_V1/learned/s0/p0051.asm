.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
sbb dil, -106
xor ecx, 22
add ax, 23362
xor al, cl
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
add dl, 47
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
sbb bl, al
add dl, -61 # instrumentation
seto dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
