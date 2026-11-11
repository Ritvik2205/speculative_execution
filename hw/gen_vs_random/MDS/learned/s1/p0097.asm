.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr di, cx
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
xor dil, -3
or di, 82
and cl, 79
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
jmp .bb_0.2
.bb_0.2:
cmovl ecx, edx
or rcx, -17
xor ax, -6793
or dil, bl
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
xor cl, 98
xor dl, 8
xor al, -4
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
