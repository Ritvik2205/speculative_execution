.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
add eax, esi
add bl, -109 # instrumentation
sbb esi, 74
bt eax, ecx
cmp al, 19
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
dec rcx
movzx ax, bl
jmp .bb_0.1
.bb_0.1:
and al, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
mov bl, cl
adc rax, 1542637830
nop
xor bx, di
adc si, 46
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 10
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], sil
cmp al, 19
cmovnp si, dx
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
btc rdx, 1
adc bx, -89
cmovnbe rdx, rdi
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 96
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
xor cl, -54
bt esi, 227
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 28
add ebx, edi
cmovnbe rbx, rsi
and rcx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rcx]
test bl, 24
adc rbx, 34
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 92
cmovnbe di, si
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
cmp al, 19
movzx bx, sil
and rdi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
