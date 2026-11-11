.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dx, 41
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
cmovnle ax, di
sbb sil, 108
cmovnp rcx, rcx
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
xor ax, dx
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
sbb al, dil
add dil, -32 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdi]
test dl, 19
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
cmp bl, 13
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dil
or cl, cl
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
add cl, cl
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 43
cmp cl, bl
xor sil, cl
test ecx, edi
cmovs rbx, rdx
or sil, al
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
and rax, 59
imul dx
cmovnz edi, esi
or bl, dil
mul cl
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 56
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], si
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
add sil, -10 # instrumentation
cmovnbe esi, ebx
and rdx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 66
add dl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
add eax, ecx
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
btc rax, rdi
sbb sil, al
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
movzx rbx, dx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
add edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
