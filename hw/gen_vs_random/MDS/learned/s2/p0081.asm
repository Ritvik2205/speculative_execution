.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
xor rsi, -117
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and cl, 79
test sil, dl
xor sil, dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
or sil, -49
jmp .bb_0.2
.bb_0.2:
test ecx, -1843375753
or rax, -1523798580
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
xor cl, sil
or dil, -76
xor dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
