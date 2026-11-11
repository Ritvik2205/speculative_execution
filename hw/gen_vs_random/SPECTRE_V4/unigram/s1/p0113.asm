.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx si, cl
mov al, al
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
movzx edx, al
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe ecx, ebx
mul rbx
add dl, -99 # instrumentation
not edx
sbb al, dl
sbb bl, 57
cmovle rcx, rbx
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx], 28
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 47
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
cmovnp bx, dx
and si, 68
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 60
dec rdi
add eax, -1796699558
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dil
and rsi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 3
sbb bl, -94
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
adc dl, al
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rcx
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx], 64
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 17
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
and dl, al
add edx, ebx
or esi, edx
add bl, dil
mov dil, dil
xchg rax, rdi
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 59
cmp sil, 88
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
bswap rcx
cmp dl, bl
cmovnz eax, ebx
and sil, al
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
