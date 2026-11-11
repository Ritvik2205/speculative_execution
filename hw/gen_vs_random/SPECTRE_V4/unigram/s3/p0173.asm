.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
movzx eax, cl
test cx, 42
add dl, 41
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rcx]
add dl, 41
xor rsi, -3
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 48
cmp ax, si
cmovp esi, eax
movzx di, bl
add al, 118
add ax, 28666
cmovnl rsi, rcx
add bl, -21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
sub edi, 79
and rdx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
test ebx, -595096626
cmp bl, 13
cmovnp edi, edi
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 34
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
bts eax, 209
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 34
add dl, -39 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
sub rax, -701741274
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 53
sub cl, dl
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
test rdi, -1876639003
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
test ebx, -595096626
cmovz esi, esi
or sil, dil
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
sbb bl, dil
sbb sil, sil
and al, dl
cmp dl, bl
or dl, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
