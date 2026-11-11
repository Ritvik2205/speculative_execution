.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dl
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
and dl, -92
add al, dil
and dl, dl
sub al, cl
sub bl, dl
xchg rbx, rax
movsx si, bl
sub cx, 93
sbb dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
