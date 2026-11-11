.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap rcx
cmp al, -44
cmovnp cx, di
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
cmovnbe edx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
sbb edx, 23
xor rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
not cx
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 28
imul ebx, ebx
not edi
xor rdi, rax
bswap ecx
adc edi, -83
mov rcx, rax
adc sil, dil
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rcx], di
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
xor rsi, rdx
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], edx
add sil, 3
and rcx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rcx]
or ax, -13633
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rcx
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], eax
imul rbx, rbx, 95
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 109
dec sil
adc rax, -827748523
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], cx
mov eax, 522619143
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
neg sil
and rdx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdx]
cmovno edi, edx
btr di, 245
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
