.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -65
test al, 84
xor al, -74
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
or al, 19
xor bl, -38
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and ax, -13240
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
sbb dl, al
add cl, -127
xchg edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
