.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -13
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
test sil, -96
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
test dil, -80
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
and al, -103
cmovnbe edx, esi
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
cmovz ax, ax
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
and bl, dl
cmovno ecx, eax
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
and di, 91
or cx, 39
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
or dl, bl
and ax, di
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
test rsi, rsi
cmovp rdi, rax
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
and bl, 101 # instrumentation
cmovno esi, ebx
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
