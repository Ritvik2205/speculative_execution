.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -10 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
btr rsi, rdi
bts rbx, 56
and rcx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rcx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rbx
btc rsi, 80
btr cx, 9
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
cmovl eax, edx
jmp .bb_0.1
.bb_0.1:
test eax, 424329527
btc esi, ebx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -93
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 5
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
cmovz edx, edx
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
jmp .bb_0.2
.bb_0.2:
and dl, 18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
btr dx, di
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
xor dil, -5
or dl, -97
cmovnp dx, bx
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
and dl, -5 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
test ax, 4430
btr bx, 74
xor ebx, edx
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and cl, 11 # instrumentation
cmovp ebx, edx
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
cmovnb ecx, edx
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
