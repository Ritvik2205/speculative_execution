.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -127
test al, -38
or rdi, -41
mov cl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
mov al, al
adc al, bl
add dl, bl
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
or al, al
and al, -118
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
sub dil, -11
test edx, 1479885278
test cl, dil
mov al, dl
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
test al, 72
and dl, 24
xchg al, sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
lea ebx, qword ptr [rsi]
xchg ax, dx
sbb al, -14
or sil, -47
sub dil, bl
xor ax, 15671
add al, 40
and cl, -101
and si, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
