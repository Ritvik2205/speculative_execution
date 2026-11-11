.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rax]
xor bl, sil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
test bl, -14
or al, -75
test al, 127
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
xor dil, bl
jmp .bb_0.1
.bb_0.1:
or cl, -36
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
not sil
jmp .bb_0.2
.bb_0.2:
test esi, 425331143
or rax, -689609688
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
