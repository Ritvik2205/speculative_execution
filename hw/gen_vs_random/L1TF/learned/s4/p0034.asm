.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 12 # instrumentation
cmovnb eax, ebx
and cl, dil
xor al, dl
test dl, 84
jmp .bb_0.1
.bb_0.1:
and eax, -409673666
sbb dl, -26
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
sbb dil, cl
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -88
and al, dil
and ebx, -52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
