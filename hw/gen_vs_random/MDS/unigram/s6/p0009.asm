.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo edx, esi
or dx, dx
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
cmovl si, bx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
xor dl, bl
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
or rdx, -48
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
xor cl, -13
bt edi, ebx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rax]
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
