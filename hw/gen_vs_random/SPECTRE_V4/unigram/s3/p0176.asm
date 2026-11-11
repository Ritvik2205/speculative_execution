.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], ax
add dl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
imul rbx, rcx, 79
adc sil, sil
xor al, 56
and sil, bl
adc bl, 89
inc ebx
cmovnp bx, bx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
add bl, -71 # instrumentation
adc bl, dl
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
or bl, dl
xor dil, 59
mov rsi, 1
bts edi, 167
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 25
test si, dx
sbb eax, esi
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rbx], eax
sbb al, 32
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 94
or edi, ecx
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle esi, edx
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
add eax, -1796699558
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
sbb edi, ebx
or edi, ecx
imul sil
bts rbx, rbx
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
cmovo edi, edx
cmovle rsi, rcx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
or edx, -127
mov eax, edi
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
xchg al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
