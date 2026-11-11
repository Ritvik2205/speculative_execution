.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 120
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -109
xchg di, di
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 61
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -47
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 44
and edx, 71
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
xor sil, 8
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
bts si, dx
sub sil, dl
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
movzx cx, cl
add al, 68 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
mov rbx, rdx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
cmovz edx, ebx
cmp rbx, -66
mul rbx
add dil, 122 # instrumentation
cmovz di, cx
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rcx
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
mul sil
xor rdx, 106
sub ecx, -107
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
cmp esi, -84
test cx, dx
sub dl, al
adc rcx, rax
xchg edx, eax
bt dx, 81
sub edx, -122
add cl, 70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
cmovl rdi, rsi
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
add al, 40 # instrumentation
cmovnp rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
