.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
test rsi, rsi
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
cmovz ax, ax
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 108
or cx, 39
and bl, 101 # instrumentation
cmovno esi, ebx
and di, 99
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
cmovno ecx, eax
and ax, di
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
cmovp rdi, rax
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
or dl, bl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
and bl, dl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
