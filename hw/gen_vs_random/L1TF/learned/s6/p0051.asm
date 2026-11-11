.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
add al, 93
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
xor dil, -42
or al, -48
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and dx, 41
and sil, 93
movsx edx, dl
or al, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
