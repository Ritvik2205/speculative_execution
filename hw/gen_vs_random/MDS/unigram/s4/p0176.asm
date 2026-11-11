.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle ax, bx
btc rdi, 221
cmovb ax, ax
xor bl, dl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edx
and bl, 108 # instrumentation
cmovns rcx, rcx
xor cl, 55
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
and ebx, 45
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
xor al, cl
cmovnz ebx, ebx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovns di, bx
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
btc rsi, rcx
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 39
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
and cl, 114 # instrumentation
cmovz ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
