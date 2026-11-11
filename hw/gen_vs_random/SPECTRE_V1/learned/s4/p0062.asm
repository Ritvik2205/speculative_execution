.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 107 # instrumentation
lea edx, qword ptr [rax + rsi + 22]
cmp rdx, -19
sub bl, -19
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, -12
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
or rax, -3
movzx edx, si
test bl, -8
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
