.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 87
or dil, sil
jmp .bb_0.1
.bb_0.1:
xor sil, dil
jmp .bb_0.2
.bb_0.2:
and al, al
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
bts rdi, rcx
or al, -75
jmp .bb_0.4
.bb_0.4:
or dl, 85
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
test al, cl
jmp .bb_0.5
.bb_0.5:
or di, 14
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
