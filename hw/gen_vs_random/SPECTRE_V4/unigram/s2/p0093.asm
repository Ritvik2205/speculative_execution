.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rdx, rsi
add al, 5
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
sbb bx, dx
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rax
sub dil, -10
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rcx]
add dl, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
add esi, eax
or bl, bl
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
neg edx
cmp dl, 33
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdi], eax
dec al
sbb esi, 61
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 39
or di, cx
dec dl
add al, 122 # instrumentation
cmovns edx, eax
test cx, 18
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
add di, -74
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
adc cl, sil
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 96
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
and dx, 1
add al, cl
cmovnp edx, edx
sbb al, 32
adc dil, bl
xchg dl, dl
add dl, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
mov rbx, rcx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
cmovle rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
