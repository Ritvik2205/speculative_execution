.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, -20176
or dil, bl
bts rdi, 130
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
test dl, cl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rax, -636362975
not sil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
or dl, -97
and rsi, 23
test sil, dil
or eax, 678817098
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
