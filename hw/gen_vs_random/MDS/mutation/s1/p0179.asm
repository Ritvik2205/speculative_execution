.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 57 # instrumentation
cmovnb di, si
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and dl, al
xor si, dx
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rbx], di
bts bx, 3
and dl, 1 # instrumentation
cmovl ax, si
xor ax, -12492
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
and eax, -829294476
test rax, rdx
cmovbe di, ax
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
or edi, -88
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
