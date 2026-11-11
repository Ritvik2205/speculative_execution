.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 110 # instrumentation
movsx ax, dil
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], di
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
sbb rdx, 25
and si, 68
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 73
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 84
xor eax, edx
cmp al, -23
movzx rdi, cx
cmovnl rax, rdi
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
sbb dl, -99
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
test dl, al
not al
adc dil, dl
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 70
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
movzx si, dil
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
cmp di, 67
mov rdx, rsi
sub rcx, rbx
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
cmovb ecx, esi
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
movzx edx, al
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 76
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
add dx, -90
cmp ax, -15031
add cl, -117 # instrumentation
cmovs rsi, rdx
and rdi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdi]
add ax, -15653
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi], 31
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], si
sbb sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
