.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -102
xchg eax, ecx
jmp .bb_0.1
.bb_0.1:
xchg bl, bl
sbb sil, -19
and dil, dl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdi]
and ax, 26813
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
add al, 93
or al, al
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
