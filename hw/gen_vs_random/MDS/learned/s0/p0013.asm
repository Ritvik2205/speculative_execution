.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -102
and dil, 125
or rcx, 54
or al, 54
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and al, 82
and dil, -39
bt si, ax
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
btc di, 233
and rdx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and cl, -19
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
test eax, 1729060510
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
