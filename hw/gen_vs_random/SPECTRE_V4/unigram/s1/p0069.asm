.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dil
cmp cl, 100
cmovp rdi, rcx
cmovbe rax, rdx
xor dil, 37
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
cmovs rbx, rdx
add esi, 96
cmovs rsi, rax
cmp rax, 2052654950
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
cmovo si, di
mov dil, dl
and rcx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rcx]
sub cl, al
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
and sil, -84
cmovp rbx, rdi
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], -121
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
mov rdx, rdi
and cl, al
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rsi]
mov ecx, esi
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
cmp rbx, rbx
add al, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
bt dx, 81
cmp al, -44
and rax, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 65
movzx di, dil
add al, -3
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rax
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dil
sbb bx, 94
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
test cx, 7280
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rbx], cx
btr rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
