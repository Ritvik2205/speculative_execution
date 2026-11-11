.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rdi]
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
add bl, 100 # instrumentation
lea si, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
add cl, 107 # instrumentation
cmovnl ax, ax
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
lea cx, qword ptr [rbx + rsi + 48821]
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
jmp .bb_0.1
.bb_0.1:
add esi, -124
add bl, 48 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], -5
btr eax, 231
or rax, -443578116
not esi
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
sbb dl, -26
adc cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
