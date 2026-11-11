.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, ax
add bl, -72
movzx dx, al
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
test ebx, 1263899340
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
xchg dil, al
test ecx, 55
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
movzx edi, bl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
movzx rax, bx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
movsx esi, dx
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
imul bx, cx
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 30
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
add bl, 63 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 2
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
add al, 5
movzx eax, cl
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and dil, bl
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
mul ax
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
and rbx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rbx]
cmovle rbx, rax
or dil, cl
add cl, 45
xor dl, 96
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
xor cl, dl
adc dl, 52
cmp cl, dl
and rcx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rcx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
