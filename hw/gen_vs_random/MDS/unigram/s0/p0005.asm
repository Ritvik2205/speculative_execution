.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc bx, 104
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -85
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdi], cx
or rbx, -72
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
xor sil, 110
btc dx, di
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
btr esi, 21
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
bt ebx, edi
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and sil, 74
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
