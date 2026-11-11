.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
sub dil, cl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 81
sub sil, -35
mov al, al
sbb rbx, 20
add al, 17 # instrumentation
cmovnle ecx, eax
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], 46
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
xchg rsi, rbx
add bl, 102 # instrumentation
cmovnp esi, ecx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 48
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rsi
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -16
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
add cl, -118 # instrumentation
sbb rbx, 58
and sil, -84
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
cmp dx, 58
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
not cl
add bl, sil
or dil, 89
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
xchg rax, rcx
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -56
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
cmovbe ax, ax
mov cl, sil
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
cmp ecx, 11
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 40
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
sub cl, sil
imul dil
bts di, 72
xor edi, 127
and sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
