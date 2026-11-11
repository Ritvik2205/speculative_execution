.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, cx
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
and cl, sil
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
and rdi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdx
and bl, -5 # instrumentation
cmovnl si, ax
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and cl, 18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rbx]
cmovle rax, rdx
btr esi, 85
btr rdx, rax
and bl, 127 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
btc ax, bx
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rcx], bx
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], bx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
