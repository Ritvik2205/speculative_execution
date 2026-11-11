.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 65
xor cl, 15
or cl, bl
and al, -114
or dil, -76
test rcx, -613256812
or cl, -77
test bl, cl
and bl, dl
bts rdx, rax
jmp .bb_0.1
.bb_0.1:
and rax, -731384280
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
or al, cl
or dil, dil
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
