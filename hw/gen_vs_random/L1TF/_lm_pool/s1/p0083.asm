.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
xor sil, dl
add bl, 68
sub cl, 86
cmp al, 27
jmp .bb_0.1
.bb_0.1:
add al, 93
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
cbw
xor ax, 27703
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
