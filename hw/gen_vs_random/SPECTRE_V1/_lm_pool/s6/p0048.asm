.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
xchg al, al
xor cl, sil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
cmp rcx, 35
sbb ecx, 64
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
test dil, -116
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
