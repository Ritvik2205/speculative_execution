.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz ax, ax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
or dl, bl
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
or cx, 49
and bl, dl
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
and di, 99
and ax, di
cmovp rdi, rax
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
and bl, 101 # instrumentation
cmovno esi, ebx
cmovno ecx, eax
test rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
