.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx ebx, cl
btc rax, rcx
bts eax, 209
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
bt edx, edi
add dil, dil
or eax, edx
sub dl, 43
bt edx, 6
cmovle ebx, ecx
test rdx, 24
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 50
xor rdx, rax
movzx bx, sil
cmovo rcx, rdi
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
add bl, bl
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
btc rdi, rbx
sbb dil, 62
cmovns rsi, rdx
sbb bl, -94
not rsi
and rdx, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rdx]
bts rax, 157
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
adc ebx, 117
add cl, 106 # instrumentation
cmovnp rbx, rsi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
sbb rax, 183833426
cmovle rbx, rdx
add bl, 38 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
bts rcx, 100
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 35
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 67
cmovs rax, rcx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
xor rcx, rsi
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
cmovp esi, edx
or ecx, eax
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
