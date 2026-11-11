.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], si
and rdx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdx]
cmovnbe ax, bx
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 19
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
bts esi, ebx
cmovnz edx, ebx
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
sbb rdx, 37
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
movzx rdx, bx
cmovns bx, bx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
and ecx, 67
add bl, -109 # instrumentation
sbb edi, 19
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rcx]
inc eax
xor sil, 56
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
bts eax, 209
not cx
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ecx
cmovnbe rbx, rdi
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 93
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 13
movzx cx, al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 63
add dl, 100 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
cmp sil, 88
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], si
cmovnb esi, edi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
bt edi, 13
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 49
adc dl, cl
cmp bl, 13
test edi, -1249897727
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
add cx, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
