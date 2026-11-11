.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
mov edx, ebx
and al, 82
and al, al
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdi
or di, 29
mov cl, bl
sbb eax, 40509622
imul rdx, rcx
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
add sil, cl
sbb sil, 24
and cl, 32
adc ecx, 55
and bl, -30
add al, 105 # instrumentation
cmovl esi, eax
sbb dil, al
cmovl edx, eax
and sil, dil
neg al
and rcx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
add bl, dil
or dil, cl
cmp rax, -2096157586
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], sil
sbb dx, 2
and edi, edx
add rcx, -61
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 67
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
bswap ecx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
and dil, cl
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 36
test ecx, -907816607
xchg al, bl
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 12
and rcx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rcx]
and bl, -30
add al, 40
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
sub rbx, 101
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
