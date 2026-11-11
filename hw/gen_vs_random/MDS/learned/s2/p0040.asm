.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
test ecx, -1843375753
xor bl, cl
or al, -17
jmp .bb_0.1
.bb_0.1:
or al, 74
xor bx, 21
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
jmp .bb_0.3
.bb_0.3:
or al, cl
bt rbx, rdi
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
or dil, -76
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
