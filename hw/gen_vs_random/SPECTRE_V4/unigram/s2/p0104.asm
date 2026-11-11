.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rbx
and rdx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rdx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
dec dl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 7
bts edx, 75
cmovnle rcx, rcx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
imul dx, ax, 6
bt eax, 84
add bl, -115 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 82
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
cmp ecx, 6
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rsi
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
cmp cx, ax
xor cl, -101
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], si
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
adc cx, 37
cmovnbe bx, cx
and rsi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
or dl, al
movsx rdx, dil
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 26
cmp rbx, 66
test rdi, -1876639003
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
sub dl, al
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 33
cmp dl, 81
cmovz rdx, rcx
movzx dx, bl
or cx, di
add dil, 16
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], ecx
cmovns si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
