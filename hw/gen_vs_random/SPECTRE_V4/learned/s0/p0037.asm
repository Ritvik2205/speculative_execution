.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rsi
dec al
and cl, 126
cmovnz esi, ebx
or bl, 61
sbb dl, -62
sub al, 63
and rbx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rbx]
sub bl, cl
cmp sil, 113
and ax, 25163
and ax, 27239
sbb rsi, 117
xchg edx, esi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
sub bl, al
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx]
sbb cl, al
add dil, al
and cx, -117
cmp al, 116
adc bl, 35
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
bt si, di
sub al, -128
and si, -74
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
sub al, 0
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
sub al, 11
cmp cl, sil
cmp rax, 1097504565
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
or bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
