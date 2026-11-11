.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 94
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
xor edi, 79
sub bl, 17
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 65
dec bx
and sil, bl
add al, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ecx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe eax, edi
and rbx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rbx]
add dl, -10 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
cmovle dx, dx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
cmovb cx, cx
movzx rdx, di
and rax, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rax]
btc rdi, 167
cmp ax, cx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 74
xor cl, cl
bts edi, 167
sub al, 50
add bl, 72 # instrumentation
cmovle bx, cx
add bl, -72
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
movzx esi, si
imul ax, di, 70
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 20
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], si
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
test bl, dl
bts rbx, 6
and dl, al
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 92
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
cmovp ebx, ebx
add dl, 41
btr dx, ax
sub edx, 24
xor cl, -101
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
