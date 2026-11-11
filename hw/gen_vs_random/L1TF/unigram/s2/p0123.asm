.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -80
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
sub edi, 56
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
and sil, 37
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
lea bx, qword ptr [rdi + rbx + 90]
mov esi, -1776760885
jmp .bb_0.1
.bb_0.1:
seto al
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
add rsi, 72
cmovnbe edi, eax
add al, -34 # instrumentation
setnp cl
and rbx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rbx]
cmp al, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
