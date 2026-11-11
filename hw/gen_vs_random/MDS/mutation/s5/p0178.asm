.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
or cx, 49
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
and bl, 101 # instrumentation
cmovno esi, ebx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
and ax, di
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 73
and bl, dl
cmovz ax, ax
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
cmovno ecx, eax
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
and di, 91
cmovp rdi, rax
test rsi, rsi
or dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
