.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -114
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
or cl, al
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and dil, 125
or dil, -78
or cl, cl
xor dl, -43
bt ax, si
btr edx, ebx
xor bl, sil
test rbx, 92
test sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
