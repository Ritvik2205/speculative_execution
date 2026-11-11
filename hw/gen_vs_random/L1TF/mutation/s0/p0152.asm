.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
cmovnp rdx, rdx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 1
add dl, 27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rcx]
sbb al, -14
inc dl
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
test ax, 7679
and rdx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdx]
or rbx, 18
cmovp cx, ax
not dx
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 3
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
