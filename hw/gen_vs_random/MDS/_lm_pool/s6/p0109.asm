.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 16
xor rax, -91
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rcx
xor cl, 15
and esi, 98
and al, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
test cl, 62
jmp .bb_0.1
.bb_0.1:
test edx, -1561252782
and cl, -6
test rdx, 29
xor dl, 8
and esi, 14
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
