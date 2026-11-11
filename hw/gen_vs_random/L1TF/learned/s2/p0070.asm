.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -57
or ecx, esi
and bx, 9
and dl, 73
add al, 93
and rax, rcx
xor bl, dil
lea di, qword ptr [rsi + rax]
jmp .bb_0.1
.bb_0.1:
or rax, -82
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
