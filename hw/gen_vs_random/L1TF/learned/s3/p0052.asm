.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rbx]
xor rdi, rdi
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
adc rbx, 75
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
sub cl, 32
xor ax, si
neg sil
add bl, -93
bt ax, dx
cmp ax, -79
xor al, 14
mov cl, cl
and dl, 124 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
or sil, -5
lea edi, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
