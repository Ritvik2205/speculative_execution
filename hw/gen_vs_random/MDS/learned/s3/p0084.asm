.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and al, dil
test edi, -1252846009
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and sil, sil
jmp .bb_0.1
.bb_0.1:
and al, 49
and al, -114
xor al, dl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
or bl, cl
and dil, dil
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
