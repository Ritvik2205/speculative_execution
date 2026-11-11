.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
sub cl, -74
mul ax
add bl, -109 # instrumentation
sbb edx, 29
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rax
dec rdx
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
adc rcx, rax
sub dl, cl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
test cl, dl
or cl, cl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 38
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
xor dl, 95
sbb cl, cl
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
add cx, 15
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
cmovle edi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rsi]
sbb cl, cl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
mul rbx
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
xor esi, 62
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
bt esi, eax
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
sbb al, dil
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
sub rbx, 77
and dl, sil
sub bl, al
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rax, 88
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
sub edi, edx
add al, -117 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
imul rsi
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 16
bt ecx, 63
and cl, 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
