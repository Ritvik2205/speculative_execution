.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 50
and rax, 1994547909
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
cwde
or cx, 38
sub dl, -78
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea edi, qword ptr [rdi + rax + 11]
xor al, 45
and dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
