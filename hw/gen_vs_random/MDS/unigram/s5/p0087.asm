.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 107
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], di
bts rsi, rdi
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
or dil, al
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 38
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 28
btr dx, 47
bts esi, 61
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 80
cmovnz ebx, edi
xor cl, 83
cmovnl rsi, rdi
and al, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edi
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
cmovz ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
