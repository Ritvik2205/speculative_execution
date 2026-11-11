.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -115 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rsi, 70
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
or eax, -1642752131
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
btr rsi, 73
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], 9
test cx, 96
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
bts rcx, 115
test bx, 36
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 39
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
bt ax, 171
bts eax, 103
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdi]
test rax, 1732677821
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdi
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
test bl, 106
imul ax, cx, 78
sub eax, 31
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
cmovb rbx, rsi
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rsi]
btc di, 67
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
cmovle esi, edx
cmovo edi, eax
not bx
cmovnbe ebx, esi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
sub bl, 87
cmovz rdi, rdx
adc rax, 31
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 21
imul cl
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
