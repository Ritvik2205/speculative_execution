.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 14
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdi]
xor cl, dl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
xor dx, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
