.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, sil
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rdi
bts rdx, rsi
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 66
add rax, rbx
and ecx, 71
imul ax, di
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 51
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
cmp rax, rsi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 73
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
mov al, dil
add al, 100 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rcx]
xor dx, si
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
cmp dl, -82
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -86
bt rax, rax
xchg al, bl
imul di, ax
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 71
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
test edi, -2098143765
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
xchg rsi, rbx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 5
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], si
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], esi
test dil, -26
xor dil, bl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
sbb cl, 45
btc rax, rdx
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi], 90
bts rcx, 7
sbb ecx, ebx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
