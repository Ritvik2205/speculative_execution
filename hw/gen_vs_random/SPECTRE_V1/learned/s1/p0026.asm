.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -13240
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
or al, 19
lea ecx, qword ptr [rsi]
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
sub di, 7
add bl, dil
cmp dl, 119
lea ax, qword ptr [rdi + rbx]
jns .bb_0.3
jmp .exit_0
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 47
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
