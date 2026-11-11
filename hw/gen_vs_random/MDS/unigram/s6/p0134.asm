.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and cl, 18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
btr rsi, 207
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
cmovz ax, bx
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and al, -114
or bx, 63
and rdi, 9
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
and cl, -85 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
btr di, ax
and al, 61 # instrumentation
cmovl di, ax
test rax, -1579405415
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 31
bts rsi, rdx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
