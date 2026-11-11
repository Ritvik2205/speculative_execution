.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 42
xor al, al
sub dil, bl
inc edi
add cl, sil
bswap rdi
xor si, 17
xchg bl, sil
lea bx, qword ptr [rdx]
sub cx, 89
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
