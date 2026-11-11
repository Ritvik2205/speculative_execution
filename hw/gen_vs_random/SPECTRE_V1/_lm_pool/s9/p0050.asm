.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
inc rax
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 14
setnb bl
bt eax, edx
sbb al, dl
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
