.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -35
and ax, 5001
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
or cl, 119
test dl, -95
and cl, dl
and dil, cl
and eax, -574348013
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
bt si, cx
and dl, -73
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
