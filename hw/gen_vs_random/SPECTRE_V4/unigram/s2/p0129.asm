.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe rdi, rcx
and esi, 2
sub dl, cl
inc bl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
or bl, dil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
cmp dl, -82
add dl, 109
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
add rax, -874478885
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
movsx edi, al
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
xor dl, -66
add dil, cl
cmovnz rdx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rsi]
btr rcx, 134
adc al, bl
add al, 68 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
sub rcx, 126
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and dl, -104
and rcx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 6
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdi]
cmp cl, 107
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
cmovb rbx, rsi
mov ebx, edi
mov dl, -124
movsx edx, dl
cmovz ecx, ebx
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], eax
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], esi
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
movzx ecx, si
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 79
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 38
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
add cl, 35 # instrumentation
cmovnb rax, rsi
and rdx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
