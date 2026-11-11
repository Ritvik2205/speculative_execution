.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz eax, ebx
or ax, -14271
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
test dl, cl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 11
xor rsi, -117
or edi, edi
btr di, di
jmp .bb_0.1
.bb_0.1:
not rsi
cmovz rbx, rsi
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdi
not ecx
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
or eax, -1777347252
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
