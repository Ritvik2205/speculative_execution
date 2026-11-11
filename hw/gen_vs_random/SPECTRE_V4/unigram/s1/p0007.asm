.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -68
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
sbb bl, -79
and rbx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rbx]
add rcx, -61
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 98
xor cl, bl
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
movzx esi, si
or ebx, -78
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
sbb ebx, -54
bts ax, 159
sub rcx, rdx
adc bl, 97
sub bl, cl
xchg eax, edx
cmovno rsi, rcx
xor rax, -1522567562
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
add rax, -1121139858
or dil, dil
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
or dil, cl
cmovbe eax, ecx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
cmovnp edi, edx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 0
test dx, 28394
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
sbb rcx, rdi
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 48
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 71
or cl, -104
sub rcx, rdi
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
bts rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rcx]
cmovno edi, edx
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], si
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 1
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], edi
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
cmovns dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
