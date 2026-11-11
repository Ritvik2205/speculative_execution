.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
btc rdi, rcx
test edi, -1252846009
and dl, dl
btr dx, 47
test rax, rdx
xor esi, esi
or al, cl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
test dil, -80
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
xor di, cx
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
and ax, -122
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 60
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ecx
cmovnz ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
