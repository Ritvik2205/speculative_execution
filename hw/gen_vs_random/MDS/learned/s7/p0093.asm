.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 65
xor rbx, 89
bt eax, 28
jmp .bb_0.1
.bb_0.1:
xor al, dil
and bl, bl
test rax, 1214712583
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
jmp .bb_0.2
.bb_0.2:
or edi, ebx
or sil, bl
test sil, 41
test bl, -9
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
test edi, -1252846009
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
