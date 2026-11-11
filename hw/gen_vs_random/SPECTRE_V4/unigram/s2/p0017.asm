.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rbx]
add dl, dl
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
sbb rax, 183833426
sbb cl, 19
add bl, -115 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 66
bts esi, 241
cmp di, 32
xor ax, dx
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 26
sbb dl, -99
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], ax
or bl, 84
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
adc ecx, -12
btc rsi, rdx
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
add cl, 106 # instrumentation
cmovnp rax, rcx
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovl rdx, rax
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
cmovs eax, edx
and esi, 55
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
xor al, 69
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 51
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], ecx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 44
bt ecx, edx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
add al, 118
xchg cl, al
add cl, -82 # instrumentation
sbb bx, dx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
bts rdi, rbx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
