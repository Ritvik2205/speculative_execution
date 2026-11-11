.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
or al, -57
lea ebx, qword ptr [rcx + rcx + 12]
xor dl, 9
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 84
jmp .bb_0.1
.bb_0.1:
or al, bl
cmp sil, -11
jmp .bb_0.2
.bb_0.2:
lea si, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
