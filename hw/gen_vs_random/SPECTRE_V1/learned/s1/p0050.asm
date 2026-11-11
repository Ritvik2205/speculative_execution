.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 93
and rbx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rbx]
mov al, cl
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
add cl, bl
xor cl, bl
xchg dil, al
sub rbx, -11
test dil, dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
