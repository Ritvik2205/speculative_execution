.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
btc rdi, rcx
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
btr dx, 47
test edi, -1252846009
xor esi, esi
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 38
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
cmovnz ax, si
and ax, -16061
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
test rax, rdx
test dil, -51
xor di, cx
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
and dl, dl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
