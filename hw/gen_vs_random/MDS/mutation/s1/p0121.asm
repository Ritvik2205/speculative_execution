.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 101 # instrumentation
cmovno esi, ebx
or cx, -42
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 73
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
or dl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
and di, 99
cmovno ecx, eax
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdx
test rsi, rsi
and ax, di
cmovp rdi, rax
cmovz ax, ax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and bl, dl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
