.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, dx
test bl, -114
and esi, 83
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
and bl, sil
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 15
btc ax, bx
jmp .bb_0.1
.bb_0.1:
or al, 16
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and cl, cl
or dil, dil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
xor al, cl
xor cx, -18
bt ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
