.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edx
or dl, al
xor dl, -59
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
test cl, 62
and rax, -2058103810
or sil, -78
or dl, -21
and eax, 33
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and cl, -71
xor cx, -18
jmp .bb_0.1
.bb_0.1:
xor al, 34
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
