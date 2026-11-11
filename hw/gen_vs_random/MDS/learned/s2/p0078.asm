.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 30
xor cl, -13
or bl, -52
test bl, sil
xor al, 99
xor al, 8
or al, 37
jmp .bb_0.1
.bb_0.1:
test sil, -96
xor rax, -1657511731
or al, 37
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 105
or bl, dl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
