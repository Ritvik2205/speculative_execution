.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
or si, 85
sub cl, -119
and bl, dil
test al, 72
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
mov cl, al
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
adc sil, cl
or sil, cl
xor sil, bl
and dl, dil
xor dil, 117
adc dil, -17
add al, sil
adc dl, 16
cmp sil, al
xor ax, -22861
xor cl, dil
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
add al, -3
xor bl, sil
cmp al, -106
adc cl, al
adc al, sil
adc al, 41
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
or al, -83
adc esi, 96
bts bx, 102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
