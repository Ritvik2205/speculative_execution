.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc dx, 38
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rsi]
cmovnle eax, edx
cmovle rsi, rcx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
and bl, cl
cmovbe rax, rdx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 56
bt rdx, rdi
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 38
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 27
or di, -18
cmovnl bx, cx
bt bx, 18
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
