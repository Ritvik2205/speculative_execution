.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rsi
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and dl, -104
or bl, 80
add al, -127
sub al, 29
sub dl, al
xor ax, 15671
add dl, al
sub al, 59
and sil, -84
or cx, -74
xor bl, 126
dec dl
adc sil, dl
or al, -90
or sil, -47
test cl, bl
mov cl, bl
cmp cx, 0
inc ecx
and dl, cl
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
xor cl, 13
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
cmp al, -1
adc al, dil
jmp .bb_0.1
.bb_0.1:
and ax, -14374
adc sil, -2
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
