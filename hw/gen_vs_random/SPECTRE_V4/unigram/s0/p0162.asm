.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rcx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 95
or dil, cl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
test eax, 1340292467
xor edi, edi
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], eax
sub dx, bx
cmovl bx, si
cmovz rbx, rdx
add dl, 77 # instrumentation
cmovno dx, si
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
add bl, 95 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
add al, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 71
xor al, dl
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], ecx
cmp rdi, rdx
movzx esi, al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
cmovnb bx, ax
neg rdx
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], ax
and rdi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdi]
add bl, 127 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], -59
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 3
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
add cl, -23 # instrumentation
cmovno ecx, esi
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 41
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
xor bx, 106
btr bx, 11
cmovl dx, dx
btc rdx, rax
xor cl, 88
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -74
cmp rax, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
btc rbx, rcx
cmp sil, dil
test rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
