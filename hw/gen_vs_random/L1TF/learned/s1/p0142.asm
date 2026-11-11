.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
xor al, 16
xor al, 45
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
and sil, -90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
