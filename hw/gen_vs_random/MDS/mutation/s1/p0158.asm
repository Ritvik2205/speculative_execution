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
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
cmovz ax, ax
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
and bl, dl
cmovno ecx, eax
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
and di, 99
or cx, -42
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
