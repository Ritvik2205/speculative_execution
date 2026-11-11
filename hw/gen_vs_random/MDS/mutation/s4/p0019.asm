.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 46
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and ax, -10351
test edi, -1252846009
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ecx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -30
btc rdi, rcx
or al, cl
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
and dl, dl
cmovnz ax, si
btr dx, 47
test rax, rdx
xor esi, esi
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
xor di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
