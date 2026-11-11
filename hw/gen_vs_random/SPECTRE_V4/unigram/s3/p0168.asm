.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 18 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
sub bl, sil
imul rdx, rax
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 11
test dil, -83
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
mul cx
imul bx, cx, 64
add cl, sil
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
test bl, al
adc bl, 127
movsx dx, dil
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
add al, 89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rbx]
neg edx
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
add al, -10 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 29
sub sil, -35
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 35
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edx
and cx, di
cmovnbe edi, ecx
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 0
sub cx, dx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -61
adc al, bl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
btc ecx, ebx
mov ecx, esi
btc ecx, ebx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
add dl, -25 # instrumentation
cmovs rdx, rcx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
test cx, cx
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
sbb bl, dl
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
sub dl, dl
add al, -44
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
neg rsi
test cl, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
