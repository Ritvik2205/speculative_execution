.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
xor al, 45
and sil, 37
or esi, 29
jmp .bb_0.1
.bb_0.1:
or al, sil
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
