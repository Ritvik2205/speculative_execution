.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
xor al, dl
test ecx, -1843375753
xor bl, -88
jmp .bb_0.1
.bb_0.1:
test eax, -409834435
cmovbe ebx, eax
or cl, 39
or rsi, 31
or dil, 16
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
test cl, 73
and di, 91
xor dl, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
