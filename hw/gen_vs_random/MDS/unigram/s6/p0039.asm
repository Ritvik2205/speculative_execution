.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 0b1000000000000000 # instrumentation
bsf si, si
and dl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
test eax, -675944960
cmovns ax, cx
xor rbx, 89
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
test edi, -1252846009
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and bl, 121 # instrumentation
bt rbx, 87
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor edi, 31
bt edi, ecx
and dil, -62
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rbx]
btr dx, 47
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
cmovns di, si
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
