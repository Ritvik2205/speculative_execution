.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -79
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
cmovz eax, edx
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
cmovnl eax, ebx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
and dl, -7
and rax, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rax]
or al, -8
btr bx, 15
xor dx, cx
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
not al
and bl, -30 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and dil, 63
xor cl, 122
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
xor sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
