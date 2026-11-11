.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 1
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 8
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
cmovnl ax, dx
and rax, 70
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add cl, 59 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
movzx eax, al
xor al, 29
lea rdi, qword ptr [rax + rdi + 79]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 3
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
cmovnle si, si
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
