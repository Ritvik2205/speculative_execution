.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], -15
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
xor bl, dl
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
bts rsi, 221
and al, 42 # instrumentation
cmovz esi, edx
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
cmovb ebx, esi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
bt di, bx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -553694152
cmovno si, cx
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
cmovns rcx, rbx
and bl, dl
and rbx, rsi
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
not ebx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
btc rdi, rdi
or bl, 13
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ecx
bts rsi, 206
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and dil, -62
xor rbx, 89
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
xor al, bl
btc esi, ebx
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rbx
and al, 61 # instrumentation
cmovl di, ax
btc bx, cx
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
