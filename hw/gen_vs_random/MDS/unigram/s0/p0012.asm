.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, cl
btc dx, 38
and bl, -72 # instrumentation
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 68
bts rcx, rcx
bts ecx, edi
and cl, dl
and rdi, 36
cmovp cx, ax
and rax, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rax]
and dl, -107 # instrumentation
cmovz rax, rdx
and cl, 95 # instrumentation
cmovns rdx, rdx
jmp .bb_0.1
.bb_0.1:
xor dl, -68
and dl, 124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
and sil, -26 # instrumentation
cmovnp rdx, rsi
bts eax, ebx
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 5
or rdx, rcx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 41
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 81
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rax], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
