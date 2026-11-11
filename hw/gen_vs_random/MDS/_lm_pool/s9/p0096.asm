.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
and al, 82
test sil, cl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
xor bl, 67
xor dl, -59
test ebx, -2015966884
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
xor cx, -18
or sil, cl
bt edi, ebx
or dil, 12
and rdx, 76
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
