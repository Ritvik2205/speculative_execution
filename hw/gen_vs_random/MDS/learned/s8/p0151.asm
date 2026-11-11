.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -22
test sil, al
xor rsi, -117
or sil, -78
or al, -75
or bl, cl
and cl, cl
test bl, 65
test al, cl
or cl, dil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
or sil, -49
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
not al
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
