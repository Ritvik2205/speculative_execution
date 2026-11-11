.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
xor cl, dil
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
or dl, al
not dil
test al, 66
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
or dl, 51
cmovnz eax, edx
jmp .bb_0.3
.bb_0.3:
xor dl, 34
and al, -55
or dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
