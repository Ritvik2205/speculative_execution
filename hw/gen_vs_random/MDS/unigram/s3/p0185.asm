.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rsi
and ax, bx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 75
bt rax, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
or sil, cl
cmovno ecx, esi
not ax
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
bt edi, 254
or si, 11
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ecx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rcx]
test ecx, 1044879383
and rax, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
test rbx, 80
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
