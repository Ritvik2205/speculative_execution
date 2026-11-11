.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 100 # instrumentation
lea si, qword ptr [rbx]
lea cx, qword ptr [rbx + rsi + 48821]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
lea ebx, qword ptr [rdi]
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
add cl, 107 # instrumentation
cmovnl ax, ax
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
jmp .bb_0.1
.bb_0.1:
add bl, 48 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], -5
not esi
or rax, -82
btr eax, 47
add esi, -17
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
sbb dl, -26
adc cl, dl
jmp .bb_0.2
.bb_0.2:
add al, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
adc esi, esi
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
xor ax, 30996
cmp ax, 24210
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
lea eax, qword ptr [rsi + rbx + 1473]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
