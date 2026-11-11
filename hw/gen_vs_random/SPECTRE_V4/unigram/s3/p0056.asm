.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle eax, edi
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
sbb al, al
xor dx, di
inc ax
add ebx, 3
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 28
add dil, -75 # instrumentation
adc dil, 14
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
add dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 93
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edx
xor al, 56
cmovo ax, bx
cmovs rax, rbx
sub al, 119
movzx rax, cl
cmovb rax, rbx
add dil, 110 # instrumentation
movsx bx, dil
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
adc cl, 29
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 58
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
cmovb edx, eax
imul dx
cmovnbe ax, bx
add sil, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
not cx
adc rax, rcx
xor cl, bl
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
or ax, dx
and al, dil
and dl, al
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
add bx, 110
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
add cl, 106 # instrumentation
cmovnp rdi, rbx
cmovo rcx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
