.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdx], cx
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
and dl, 93 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], si
or cx, -42
and dl, 120 # instrumentation
cmovnle bx, di
cmovnle dx, cx
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
and dl, 48 # instrumentation
cmovz rbx, rax
bts rcx, 95
test rdi, 20
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
cmovnle rbx, rdx
and dl, -72 # instrumentation
not sil
and cl, 47 # instrumentation
cmovnp ecx, esi
xor esi, 92
and dil, 125
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
btc si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
