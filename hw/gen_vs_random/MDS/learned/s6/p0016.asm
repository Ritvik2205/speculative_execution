.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
or bl, sil
test sil, cl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor dil, 124
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
and cl, -6
bt bx, cx
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
xor cl, 98
jmp .bb_0.4
.bb_0.4:
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
