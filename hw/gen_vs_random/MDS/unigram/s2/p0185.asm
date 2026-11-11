.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 69
bts rdx, 255
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 116
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and dil, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
or bl, dil
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 91
cmovle ax, ax
or bl, sil
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 75
cmovnle ecx, edi
btc dx, ax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
