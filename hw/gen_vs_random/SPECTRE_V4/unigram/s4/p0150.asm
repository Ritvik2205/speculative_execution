.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt di, 91
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
add al, 66 # instrumentation
cmovp ecx, ecx
and rbx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rbx]
cmp esi, 123
cmovnb rbx, rsi
add al, 80 # instrumentation
mov al, bl
sbb di, -105
or si, 85
and al, bl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], -89
mov eax, 1596316323
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 52
test dl, bl
cmp dil, 101
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
mov cx, -22668
test cl, -10
inc rdx
cmovle rbx, rcx
movsx edi, di
imul rdi, rsi
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 2
sbb dl, -71
add bl, -38
mul cl
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
or sil, bl
and rsi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 51
sub ecx, edi
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
btc rdx, rcx
and dl, dil
sbb dil, 47
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
cmovs esi, ecx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
sbb dil, dl
and rax, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 79
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 85
neg cl
cmovl ecx, edi
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
