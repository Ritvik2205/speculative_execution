.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rax, di
movsx edx, sil
neg dil
sbb bl, 57
bts eax, 209
cmovo ax, bx
add rdi, -94
sub rbx, 28
not esi
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
mov rcx, 4219775168754920203
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
cmovs rbx, rsi
cmp rsi, 36
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], di
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
cmovle ebx, esi
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
imul dx
cmovnb ebx, esi
sbb dil, dl
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 60
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe ecx, eax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 61
or cl, bl
add rax, rcx
cmovz esi, edx
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
btc bx, si
mov sil, sil
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
imul cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
cmovnbe ecx, eax
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
add cl, 33
add rdx, rdi
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], bx
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], di
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
