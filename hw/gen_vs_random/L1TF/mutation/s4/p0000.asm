.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
lea ebx, qword ptr [rdi]
lea cx, qword ptr [rbx + rsi + 48821]
add cl, 107 # instrumentation
cmovnl ax, ax
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
add bl, 100 # instrumentation
lea si, qword ptr [rbx]
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add esi, -17
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
not esi
btr eax, 47
or rax, -82
sbb dl, -26
adc cl, dl
add bl, 48 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
