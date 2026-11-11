.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 21
cmovl rdx, rbx
or rbx, rcx
cmovnp ax, si
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 89
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], bx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 58
cmovo ecx, esi
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -65
and ax, cx
btc rdi, rax
xor dil, 13
cmovnb rax, rax
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdx
cmovb cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
