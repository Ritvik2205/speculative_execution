.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 29207
btr dx, 47
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
and dl, dl
test edi, -1252846009
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ecx
or al, cl
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
test rax, rdx
btc rdi, rcx
xor esi, esi
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
cmovnz ax, si
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -30
test dil, -51
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
xor di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
