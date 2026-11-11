.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, al
btr ebx, 94
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and sil, 37
cmovle si, ax
jmp .bb_0.1
.bb_0.1:
inc edi
add dil, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 88
add bx, 95
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
sbb dl, dl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
