.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
and cl, 91 # instrumentation
cmovle rax, rax
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and cl, 51 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
cmovb si, cx
and rdx, 38
cmovbe esi, edx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
cmovnb si, dx
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and cl, -76 # instrumentation
cmovl dx, cx
and rax, rsi
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
