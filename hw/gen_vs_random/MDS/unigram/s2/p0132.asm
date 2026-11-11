.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 62
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
btr rbx, 63
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 83
bt bx, 253
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rbx
btc ax, bx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rbx, rax
cmovl edi, ebx
cmovz rcx, rcx
jmp .bb_0.1
.bb_0.1:
and si, -121
test edx, -1561252782
or sil, -49
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
cmovnle ebx, eax
and bl, -5 # instrumentation
cmovnl dx, cx
cmovbe bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
