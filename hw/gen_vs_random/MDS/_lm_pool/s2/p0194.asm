.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
btr esi, edx
test edx, -1561252782
and dl, dl
xor dl, 8
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
or dl, -31
and dil, -39
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], edx
and eax, -85386306
or al, dl
and al, 75
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or al, 54
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
or rdi, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
