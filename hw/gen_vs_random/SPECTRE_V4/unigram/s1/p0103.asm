.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rsi
cmovz ecx, eax
add dil, dil
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
cmp dx, 29
and rcx, -102
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
mul rbx
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
btc bx, 71
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
adc sil, 95
xor cl, dil
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
movsx ebx, dil
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], dx
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
cmovs rdi, rbx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
mov esi, ebx
xor bx, si
sub al, bl
imul ecx, ebx, 93
test ecx, 33
add rax, 52
xor rsi, -3
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 36
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
cmovz eax, esi
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 23
imul sil
sbb ecx, 86
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], ax
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
add dl, 48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
