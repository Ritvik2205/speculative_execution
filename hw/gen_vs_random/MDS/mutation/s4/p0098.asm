.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 94
test bl, dl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
bts rbx, 115
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and eax, 461212071
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
and bl, 107 # instrumentation
cmovbe di, dx
cmovle di, si
and al, -54
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
or eax, 359647041
btr rdi, 129
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
or ecx, esi
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
test rax, -648054011
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 82
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
cmovo rsi, rdi
cmovo eax, ebx
cmovnp rax, rsi
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
cmovnle edi, ebx
and rax, 41
or dil, -78
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
xor rdx, -59
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
