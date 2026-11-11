.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap rcx
xor rcx, rdi
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
lea rdi, qword ptr [rbx + rcx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bx, 57
imul dx, dx
and al, al
mov al, sil
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
sbb al, -112
and rsi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rsi]
add dl, 118 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rbx]
mov bl, al
xor edi, 115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
