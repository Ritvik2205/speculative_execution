.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 54
test edx, -1561252782
bts di, 37
test bl, -9
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
or al, 24
jmp .bb_0.1
.bb_0.1:
or si, -12
or di, 19
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
test cl, 73
and ax, 27170
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
