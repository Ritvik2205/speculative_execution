.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
lea bx, qword ptr [rcx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor sil, sil
and al, 33
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
jno .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
xor cl, -91
add al, 18
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
