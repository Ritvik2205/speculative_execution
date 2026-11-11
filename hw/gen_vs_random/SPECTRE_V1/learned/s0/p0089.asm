.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and al, 33
add dl, dl
sbb al, 104
cmp al, cl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rsi]
add edx, 53
add dil, bl
test si, 79
add bl, dil
sbb cx, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
