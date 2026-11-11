.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 99
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
xor ax, -5889
or bl, dl
or al, 37
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
cmovb dx, cx
jmp .bb_0.3
.bb_0.3:
test dil, 46
btc ax, 79
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
and cl, -19
jmp .bb_0.5
.bb_0.5:
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
test cx, 401
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
