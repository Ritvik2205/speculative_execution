.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, sil
or al, 74
or al, 25
btr ax, dx
jmp .bb_0.1
.bb_0.1:
and cl, -6
xor al, dil
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -2053267874
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
xor rdx, -59
or cl, sil
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 3
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and ax, 19224
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
