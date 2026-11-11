.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and bl, 68
xor al, -19
test cl, 101
xor al, 115
or al, -22
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], cx
xor dil, -70
jmp .bb_0.1
.bb_0.1:
test cl, dil
xor bl, -61
jmp .bb_0.2
.bb_0.2:
test bl, -9
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
