.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
xor si, 91
jmp .bb_0.1
.bb_0.1:
or dil, -76
xor al, -26
xor rax, 459999114
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 50
test dil, cl
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rdi + rbx + 32]
jmp .bb_0.3
.bb_0.3:
or rsi, 63
jmp .bb_0.4
.bb_0.4:
or dl, -8
jmp .bb_0.5
.bb_0.5:
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
jmp .bb_0.6
.bb_0.6:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
