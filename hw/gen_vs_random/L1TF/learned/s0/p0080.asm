.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
cmp eax, -127
sub sil, -99
jmp .bb_0.1
.bb_0.1:
test al, -56
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test al, -82
jmp .bb_0.4
.bb_0.4:
test dl, -37
lea di, qword ptr [rcx + rbx + 26]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
