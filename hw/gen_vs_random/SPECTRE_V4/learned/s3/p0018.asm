.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -28
or bl, cl
or al, sil
add al, cl
and bl, al
cmovbe bx, cx
test cl, -10
adc dl, bl
xor al, -15
or al, 1
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
sub al, -84
sub al, sil
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
cmp al, -1
and dl, sil
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 73
xor dl, al
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
sub al, bl
bts dx, 96
sub dl, cl
dec al
or dil, cl
cmp bl, -16
cmovno ecx, ebx
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
add dil, cl
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
mov al, sil
mov al, 124
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
mov dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
