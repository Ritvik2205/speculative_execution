.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -118
cmp al, 105
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 87
or bl, 80
cmp bl, sil
and dil, dil
xor si, ax
add dil, dil
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
sbb sil, 24
test al, 115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
