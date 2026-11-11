.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 17
test dil, -80
or dil, -78
bt ax, di
and dil, -62
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
jmp .bb_0.1
.bb_0.1:
and edi, 23
test al, 91
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
test cl, 54
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
or ax, -7150
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
