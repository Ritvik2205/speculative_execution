.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, di
add al, 117
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
sbb al, bl
lea rsi, qword ptr [rcx + rbx + 67]
not al
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
