.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp edi, 3
bts eax, edx
imul eax, eax
cmp dx, 58
and dx, cx
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
cmovbe bx, ax
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdi
not sil
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
and bl, al
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
and al, -12
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
xor sil, dil
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
movzx ax, sil
cmp dl, cl
xchg ebx, ebx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
or dil, bl
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 80
sbb rbx, 20
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rsi
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], esi
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], esi
cmp dil, -92
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
movzx eax, dil
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 84
add bl, 127 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
sbb cl, 12
cmovnb ebx, eax
xor al, -113
xor rbx, -99
sub al, cl
not cx
and dl, 124
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
mov edi, -1866088512
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
