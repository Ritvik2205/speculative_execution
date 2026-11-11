.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
test dil, -5
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 92
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
cmp bl, dil
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
add cl, sil
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 121
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 33
adc esi, 81
and rcx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
add al, -64 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rdx
xor ax, bx
xchg si, bx
add dil, cl
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
cmovl rdi, rdx
and si, dx
cmovl bx, si
xchg sil, sil
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
add dl, -82
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -16
or rbx, rdx
test rsi, 67
cmovnp cx, dx
or dx, 58
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
add al, 40 # instrumentation
cmovnp rdi, rax
cmovns ax, dx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 59
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 25
and rdi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdi]
xchg al, al
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
