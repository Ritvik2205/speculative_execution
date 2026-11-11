.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 17
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and al, sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
bt eax, edx
xor dil, -42
jmp .bb_0.2
.bb_0.2:
test al, sil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
