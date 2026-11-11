.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
bts rax, rdx
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
xor al, bl
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdx]
add al, 71 # instrumentation
setp bl
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
xor ecx, 51
mul dil
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
add cl, 121 # instrumentation
cmovs ebx, ebx
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
