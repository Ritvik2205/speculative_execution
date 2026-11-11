.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
test bl, -114
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and al, 14
xor sil, 94
and sil, 74
jmp .bb_0.1
.bb_0.1:
test dil, bl
or sil, -78
xor bl, -102
xor dil, -70
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
or bl, dl
jmp .bb_0.2
.bb_0.2:
test dl, -119
or bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
