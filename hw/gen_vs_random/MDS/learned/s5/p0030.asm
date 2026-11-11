.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
btr bx, cx
not al
xor dl, -19
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and di, 91
and al, 106
test dil, cl
test rax, -363019044
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
xor bl, -88
bt bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
