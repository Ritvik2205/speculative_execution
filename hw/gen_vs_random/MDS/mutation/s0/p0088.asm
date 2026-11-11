.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
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
and di, 99
or cx, 39
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
test rax, -1579405415
and eax, 366961170
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
test dl, bl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rax
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -113
cmovo rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
