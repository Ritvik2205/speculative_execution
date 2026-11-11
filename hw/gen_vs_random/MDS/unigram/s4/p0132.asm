.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ecx, edi
bts eax, 222
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
bt esi, 3
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
and eax, ecx
or al, 54
btr bx, 100
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rcx]
xor rax, rdx
test ebx, -2015966884
bt bx, 253
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
btc dx, ax
btr ax, 193
xor esi, ecx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 79
test dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
