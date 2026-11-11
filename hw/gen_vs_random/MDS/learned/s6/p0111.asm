.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
or cl, 6
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor dil, -5
test al, sil
and al, 82
xor bl, dil
jmp .bb_0.1
.bb_0.1:
xor ax, -5889
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
test sil, -96
jmp .bb_0.2
.bb_0.2:
test bl, cl
test bl, dl
jmp .bb_0.3
.bb_0.3:
or al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
