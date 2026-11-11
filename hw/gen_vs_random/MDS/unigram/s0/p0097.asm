.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, si
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 27
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
btr ax, di
cmovs ax, cx
and rsi, rcx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
cmovno rbx, rbx
btc edx, 75
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
test edx, -1561252782
xor dil, -5
jmp .bb_0.1
.bb_0.1:
bts edx, 189
test dl, 9
xor al, 8
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 2
and bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
