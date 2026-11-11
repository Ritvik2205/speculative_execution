.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
xchg rdx, rsi
sub al, sil
test eax, -651442446
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
sbb ebx, -54
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sbb al, 102
add al, bl
adc al, dil
sbb sil, -124
bt cx, bx
mov bl, al
adc dil, al
cmovnz rdx, rsi
xor sil, bl
or bl, cl
adc cl, al
sub al, dl
or rbx, rdi
sub dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
