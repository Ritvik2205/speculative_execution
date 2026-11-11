.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -19
or al, cl
or bl, al
xor cl, dl
cmp bl, dil
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rax
adc bl, 79
cmovnz eax, ecx
add al, -112
or dl, dl
cmp rax, 40
add dil, dl
xor ax, 30500
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
xor al, 99
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
add al, cl
add dil, bl
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rbx, 86
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
sub al, 54
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
neg sil
xor ax, -6064
sbb bl, 121
adc rdi, 31
or bl, sil
mov dx, 11552
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
and dl, al
btc rax, rdx
add cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
