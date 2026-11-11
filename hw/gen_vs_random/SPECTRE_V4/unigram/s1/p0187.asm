.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe cx, dx
bt rcx, rcx
add edx, ebx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 39
add bl, 102 # instrumentation
cmovnp edx, esi
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 13
sub sil, dil
test al, 72
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 87
and dx, -107
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
and rcx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rcx]
add bl, 71 # instrumentation
adc bx, di
and cl, -128
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rax], ax
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 90
cmovnz rcx, rdi
add ecx, edi
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 54
and ax, -23308
cmovbe ecx, ecx
cmp al, 115
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], di
btr rdi, rbx
movsx ebx, dx
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], esi
add al, 66 # instrumentation
cmovp eax, eax
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
xchg eax, esi
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], eax
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
adc bl, 35
and rsi, 0
adc rcx, -99
cmp rax, -1547540200
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
cmp al, -1
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
add al, -72 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 69
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
