.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and al, dil
test al, dil
xor cl, 83
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 49
and rsi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rsi]
xor rdi, -9
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
cmovle ax, dx
xor rbx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
