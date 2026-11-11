.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov ax, di
btc eax, 220
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
and cl, cl
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
or rdi, 73
or si, 0b1000000000000000 # instrumentation
bsr bx, si
add dx, dx
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
or bl, -5
imul rsi, rcx
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
setle dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
