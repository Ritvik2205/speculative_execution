.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 9
test dil, -80
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
test cl, -113
test al, 91
test rax, 1000448998
btc di, 164
and bx, 22
and al, 14
or cl, 39
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
btc ax, 55
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
or dl, cl
cmovnbe rax, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
